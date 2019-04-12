/* Получение информации обо всех атрибутах(учитывая только атрибутную группу и атрибутные типы)(attr_id, attr_name, attr_group_id, attr_group_name, attr_type_id, attr_type_name) */
SELECT * FROM ATTRIBUTES A 
	JOIN ATTR_TYPES AT USING (attr_type_id) 
	JOIN ATTR_GROUPS  AG USING (attr_group_id) 
	JOIN PARAMS P USING (attr_id);

/* Получение всех атрибутов для заданного объектного типа, без учета наследования(attr_id, attr_name ) */
SELECT a.name, attr_id, ot.name, object_type_id FROM ATTRIBUTES a 
	JOIN ATTR_BINDS ab USING (attr_id) 
	JOIN OBJECT_TYPES ot USING (object_type_id)
  	WHERE object_type_id = 1;

/* Получение иерархии ОТ(объектных типов)  для заданного объектного типа(нужно получить иерархию наследования) (ot_id, ot_name, level) */
SELECT name NAME, object_type_id, parent_id 
FROM OBJECT_TYPES
START WITH object_type_id = 3
CONNECT BY PRIOR parent_id = object_type_id;

/* Получение вложенности объектов для заданного объекта(нужно получить иерархию вложенности)(obj_id, obj_name, level) */
SELECT * FROM OBJECTS
START WITH object_id = 3
CONNECT BY PRIOR parent_id = object_id;

/* Получение объектов заданного объектного типа(учитывая только наследование ОТ)(ot_id, ot_name, obj_id, obj_name) */
SELECT * FROM OBJECTS WHERE object_type_id IN (
        SELECT object_type_id FROM OBJECT_TYPES
        START WITH object_type_id = 3
        CONNECT BY object_type_id = PRIOR parent_id);

        

/*Получение значений всех атрибутов(всех возможных типов) для заданного объекта(без учета наследования ОТ)(attr_id, attr_name, value) */
SELECT attr_id, name,
CASE
  WHEN value IS null
  THEN TO_CHAR(date_value)
  WHEN date_value IS null
  THEN TO_CHAR(value)
END VALUE
FROM ATTRIBUTES
JOIN PARAMS USING (attr_id)
WHERE object_id IN (
  SELECT object_id FROM OBJECTS
  START WITH object_id = 2
  CONNECT BY PRIOR object_id = parent_id)
UNION
SELECT attr_id, name, TO_CHAR(reference)
FROM REFERENCES JOIN ATTRIBUTES USING (attr_id)
WHERE object_id = 2;

/* Получение ссылок на заданный объект(все объекты, которые ссылаются на текущий)(ref_id, ref_name) */
select distinct object_id, objects.name as ref_name
from references
join objects using(object_id) 
where reference=2;
/* Получение значений всех атрибутов(всех возможных типов, без повторяющихся атрибутов) для заданного объекта( с учетом наследования ОТ) Вывести в виде см. п.6*/
SELECT attr_id, name,
CASE
  WHEN value IS null
  THEN TO_CHAR(date_value)
  WHEN date_value IS null
  THEN TO_CHAR(value)
END VALUE
FROM ATTRIBUTES
JOIN PARAMS USING (attr_id)
WHERE object_id IN (
  SELECT object_id FROM OBJECTS
  START WITH object_id = 2
  CONNECT BY PRIOR object_id = parent_id)
UNION
SELECT attr_id, name, TO_CHAR(reference)
FROM REFERENCES JOIN ATTRIBUTES USING (attr_id)
WHERE object_id = 2 AND attr_id = 7;