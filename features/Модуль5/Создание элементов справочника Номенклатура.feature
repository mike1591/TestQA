#language: ru

@tree

Функционал: Формирование тестовых данных

Как Тестировщик  я хочу
создать тестовые данные для номенклатуры 
чтобы были тестовые данные 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание элементов справочника номеннклатура 
	// Справочник.ItemTypes
	И я проверяю или создаю для справочника "ItemTypes" объекты:
		| 'Ref'                                                               | 'IsFolder' | 'Code' | 'Type'                   | 'UseSerialLotNumber' | 'Description_en'            | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'False'    | 2      | 'Enum.ItemTypes.Product' | 'False'              | 'Товар (без характеристик)' | ''                 | ''               | ''               | '_32c63d8e5ee94926b3c772ab02c5243e' |

	// Справочник.Units
	И я проверяю или создаю для справочника "Units" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'False'        | 1      | ''     | 1          | ''          | ''    | 'шт'             | ''                 | ''               | ''               |          |          |          |          |         |

И Я запоминаю в переменную "шаг" значение 0 
И я делаю 10 раз
	И я запоминаю значение выражения "$шаг$ +1" в переменную "шаг"  
	И я запоминаю значение выражения '"Товар тест " + $шаг$' в переменную "Наименование"  
	
	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                           | 'ItemType'                                                          | 'Unit'                                                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en'          | 'Description_hash' | 'Description_ru' |
		| '{"e1cib/data/Catalog.Items?ref="+StrReplace(New UUId,"-","")}'| 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58792'  | ''            | '$Наименование$' | ''                 | ''               |
