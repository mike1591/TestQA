﻿#language: ru
@tree
@Отчеты
Функционал: Проверка отчета остатки товаров 

Как Тестировщик  я хочу
	сформировать отчет по остаткам товаров
чтобы
	результат отчета соответствовал образцу    

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: подготовка основых данных 
	И Заполнение констант	
	И проверяю или загружаю товары
	И загрузка документов продажа товаров
* Проведение документов 
	И я выполняю код встроенного языка на сервере
| 'Документы.ПриходТовара.НайтиПоНомеру("000000045").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
| 'Документы.ПриходТовара.НайтиПоНомеру("000000049").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
| 'Документы.ПриходТовара.НайтиПоНомеру("000000050").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
| 'Документы.РасходТовара.НайтиПоНомеру("000000017").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
| 'Документы.РасходТовара.НайтиПоНомеру("000000106").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
| 'Документы.РасходТовара.НайтиПоНомеру("000000107").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
* Формироваание отчета остатки
	И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
	Тогда открылось окно 'Остатки товаров'
	И в табличном документе 'Результат' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	Когда открылось окно 'Остатки товаров'
	И я жду когда в табличном документе "Результат" заполнится ячейка "R11C2" в течение 20 секунд
* Проверка отчета остатки
	Дано Табличный документ "Результат" равен макету "ОтчетОстатки" по шаблону
		
	

