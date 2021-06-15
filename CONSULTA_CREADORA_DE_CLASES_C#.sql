--use NombreDeBaseDeDatos;

--en otros resultados

SELECT	'ATRIBUTOS>>>>>', 'public ' COPIAR1,
	CASE DATA_TYPE 
			WHEN 'datetime' 				THEN	' DateTime ' 
			WHEN 'char' 						THEN	' char ' 
			WHEN 'nchar' 						THEN	' char ' 
			WHEN 'varchar' 					THEN	' String ' 
			WHEN 'text' 						THEN	' String ' 
			WHEN 'ntext' 						THEN 	' String ' 
			WHEN 'nvarchar' 				THEN	' String ' 
			WHEN 'decimal' 					THEN	' float ' 
			WHEN 'float' 						THEN	' float ' 
			WHEN 'bit' 							THEN	' bool ' 
			WHEN 'bigint' 					THEN	' long ' 
			WHEN 'uniqueidentifier' THEN	' Guid ' 
			WHEN 'int' 							THEN  ' int ' 
			ELSE ' ???? ' 
	END COPIAR2, 	COLUMN_NAME copiar3, '{get;set;}' COPIAR4,* 
FROM	information_schema.columns 
WHERE	TABLE_NAME = 'NOMBRE_DE_TU_TABLA' 
ORDER BY	TABLE_NAME;


--en otros resultados

SELECT	'_CONSTRUCTOR>>>>',
		CASE DATA_TYPE 
			WHEN 'datetime' 					THEN		' DateTime ' + COLUMN_NAME + ', ' 
			WHEN 'varchar' 						THEN		' String ' + COLUMN_NAME + ', ' 
			WHEN 'uniqueidentifier	' THEN		' Guid ' + COLUMN_NAME + ', ' 
			WHEN 'char' 							THEN		' char ' + COLUMN_NAME + ', ' 
			WHEN 'nchar' 							THEN		' char ' + COLUMN_NAME + ', ' 
			WHEN 'decimal' 						THEN		' float ' + COLUMN_NAME + ', ' 
			WHEN 'float' 							THEN		' float ' + COLUMN_NAME + ', ' 
			WHEN 'bit' 								THEN		' bool ' + COLUMN_NAME + ', ' 
			WHEN 'bigint' 						THEN		' long ' + COLUMN_NAME + ', ' 
			WHEN 'nvarchar' 					THEN		' String ' + COLUMN_NAME + ', ' 
			WHEN 'text' 							THEN		' String ' + COLUMN_NAME + ', ' 
			WHEN 'ntext' 							THEN		' String ' + COLUMN_NAME + ', ' 
			WHEN 'int' 								THEN		' int ' + COLUMN_NAME + ', '
			ELSE ' ???? ' + COLUMN_NAME + ' ' 
		END COPIAR,	'public ',	TABLE_NAME CLASE,* 
FROM	information_schema.columns 
WHERE	TABLE_NAME = 'NOMBRE_DE_TU_TABLA' 
ORDER BY	CLASE;

--en otros resultados

SELECT	'_CONSTRUCTOR_ASIGNACION>>>>',
	CASE DATA_TYPE 
		WHEN 'datetime'					THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'varchar'					THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'char'							THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'nchar'						THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'text'							THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'ntext'						THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'decimal'					THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'float'						THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'bit'							THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'bigint'						THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'nvarchar'					THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'uniqueidentifier' THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		WHEN 'int' 							THEN	COLUMN_NAME + ' = ' + COLUMN_NAME + '; ' 
		ELSE ' ???? ' 
	END COPIAR,TABLE_NAME clase,* 
FROM	information_schema.columns 
WHERE	TABLE_NAME = 'NOMBRE_DE_TU_TABLA' 
ORDER BY	CLASE;
