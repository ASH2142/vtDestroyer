Текст = Новый ЧтениеТекста;
Текст.Открыть("./request.txt", "UTF-8");
ТекстЗапись = Новый ЗаписьТекста("./result.txt", "UTF-8");

Стр = Текст.ПрочитатьСтроку();
МассивИменВТ = Новый Массив();
Пока Стр <> Неопределено Цикл

	
	Если СтрНайти(Стр, "ПОМЕСТИТЬ ") > 0 Тогда
		ИмяВТ = СтрЗаменить(Стр, "ПОМЕСТИТЬ ", "");
		МассивИменВТ.Добавить(ИмяВТ);
	КонецЕсли;
	ТекстЗапись.ЗаписатьСтроку(Стр);

	Если СтрНайти(Стр, "УНИЧТОЖИТЬ ") > 0 Тогда
		ИмяВТ = СтрЗаменить(Стр, "УНИЧТОЖИТЬ ", "");

		ИндексЭлементаМассива = МассивИменВТ.Найти(ИмяВТ);

		Если ИндексЭлементаМассива <> Неопределено Тогда
			МассивИменВТ.Удалить(ИндексЭлементаМассива);
		КонецЕсли;
	КонецЕсли;

	Стр = Текст.ПрочитатьСтроку();
КонецЦикла;

ТекстЗапись.ЗаписатьСтроку(";");

Для Каждого ВТ Из МассивИменВТ Цикл
	
	ТекстЗапись.ЗаписатьСтроку("");
	ТекстЗапись.ЗаписатьСтроку("////////////////////////////////////////////////////////////////////////////////");
	ТекстЗапись.ЗаписатьСтроку("УНИЧТОЖИТЬ " + ВТ);
	ТекстЗапись.ЗаписатьСтроку(";");

КонецЦикла;

Текст.Закрыть();
ТекстЗапись.Закрыть();