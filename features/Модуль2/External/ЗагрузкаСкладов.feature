﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
@ТипШага: Загрузка данных  
@Описание:  Заполнение складов
@ПримерИспользования: И загрузка складов

Сценарий: Загрузка складов

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'        | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'      | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |

