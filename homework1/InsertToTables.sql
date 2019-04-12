/* Вставка в таблицу OBJECT_TYPES */
INSERT INTO OBJECT_TYPES 
VALUES ( 1, NULL, 'Computer', 'Компьютер', 'свойства' );
INSERT INTO OBJECT_TYPES 
VALUES ( 2, NULL, 'Printer', 'Принтер', 'свойства' );
INSERT INTO OBJECT_TYPES 
VALUES ( 3, 2, 'Inkjet Printer', 'Струйный принтер', 'свойства' );
INSERT INTO OBJECT_TYPES 
VALUES ( 4, NULL, 'Head', 'Головка принтера', 'свойства' );
INSERT INTO OBJECT_TYPES 
VALUES ( 5, NULL, 'ImageSetter', 'Фотонаборный автомат', 'свойства' );

/* Вставка в таблицу OBJECTS */
INSERT INTO OBJECTS 
VALUES ( 1, NULL, 1, 'MyComp', 'Super PC', 1 );
INSERT INTO OBJECTS 
VALUES ( 2, NULL, 3, 'MyPrinter', 'HP DeskJet', 2 );
INSERT INTO OBJECTS 
VALUES ( 3, 2, 4, 'Head1', 'Super head', 3 );
INSERT INTO OBJECTS 
VALUES ( 4, 2, 4, 'Head2', 'Super head', 4 );
INSERT INTO OBJECTS 
VALUES ( 5, 2, 4, 'Head3', 'Super head', 5 );
INSERT INTO OBJECTS 
VALUES ( 6, 2, 4, 'Head4', 'Super head', 6 );
INSERT INTO OBJECTS 
VALUES ( 7, NULL, 2, 'NetPrinter', 'HP LaserJet', 7 );

/* Вставка в таблицу  ATTR_TYPES */
INSERT INTO ATTR_TYPES 
VALUES ( 1, 'Dots per Inch', 'свойства' );
INSERT INTO ATTR_TYPES 
VALUES ( 2, 'Pages per Minute', 'свойства' );
INSERT INTO ATTR_TYPES 
VALUES ( 3, 'Name', 'свойства' );
INSERT INTO ATTR_TYPES 
VALUES ( 4, 'Frequency', 'свойства' );
INSERT INTO ATTR_TYPES 
VALUES ( 5, 'Color', 'свойства' );
INSERT INTO ATTR_TYPES 
VALUES ( 6, 'Number of Colors', 'свойства' );
INSERT INTO ATTR_TYPES 
VALUES ( 7, 'Object reference', 'свойства' );

/* Вставка в таблицу ATTR_GROUPS */
INSERT INTO ATTR_GROUPS 
VALUES ( 1, 'Attributes of printer', 'свойства' );
INSERT INTO ATTR_GROUPS 
VALUES ( 2, 'Attributes of color', 'свойства' );
INSERT INTO ATTR_GROUPS 
VALUES ( 3, 'Attributes of computer', 'свойства' );

/* Вставка в таблицу ATTRIBUTES */
INSERT INTO ATTRIBUTES 
VALUES ( 1, 1, 1, 'dpi', '...', 0, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 2, 2, 1, 'ppm', '...', 0, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 3, 3, 1, 'networkName', '...', 1, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 4, 4, 3, 'CPUfrequency', '...', 0, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 5, 5, 2, 'inkColor', '...', 0, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 6, 6, 1, 'colorsCount', '...', 0, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 7, 7, 3, 'Computer-Printer', '...', 1, 'свойства' );
INSERT INTO ATTRIBUTES 
VALUES ( 8, 4, 1, 'printFreq', '...', 0, 'свойства' );

/* Вставка в таблицу ATTR_BINDS */
INSERT INTO ATTR_BINDS 
VALUES ( 2, 1, 'Printer dpi', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 5, 1, 'ImageSetter dpi', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 2, 2, 'Printer ppm', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 3, 6, 'Number of InkJet Colors', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 4, 5, 'Color of Head', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 1, 3, 'Computer Name', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 1, 4, 'Computer Frequency', 1, NULL );
INSERT INTO ATTR_BINDS 
VALUES ( 1, 7, 'Connected Printer', 1, NULL );

/* Вставка в таблицу REFERENCES */
INSERT INTO REFERENCES 
VALUES ( 7, 1, 2, 1 );
INSERT INTO REFERENCES 
VALUES ( 7, 3, 2, 1 );
INSERT INTO REFERENCES 
VALUES ( 7, 4, 2, 1 );
INSERT INTO REFERENCES 
VALUES ( 7, 5, 2, 1 );
INSERT INTO REFERENCES 
VALUES ( 7, 6, 2, 1 );
INSERT INTO REFERENCES 
VALUES ( 7, 7, 2, 1 );

/* Вставка в таблицу PARAMS */
INSERT INTO PARAMS 
VALUES ( 3, 1, 'MyComputer', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 3, 1, 'Nesterov', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 4, 1, '2.6', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 1, 2, '600', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 2, 2, '3', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 6, 2, '4', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 5, 3, 'Cyan', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 5, 4, 'Magenta', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 5, 5, 'Yellow', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 5, 6, 'Black', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 1, 7, '1200', NULL, 1 );
INSERT INTO PARAMS 
VALUES ( 2, 7, '30', NULL, 1 );