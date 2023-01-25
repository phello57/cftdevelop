Мой итоговый проект по курсу "ЦФТ разработчик" ШИФТ

Задача итогового проекта:
"В Банке имеется собственная особая система категоризации кредитных договоров. Можно задать принадлежность кредита к стандартной категории, либо к какой-либо льготной категории, которая определяет скидку при начислении комиссий по кредиту.
<br>
Для этого в системе необходимо реализовать настраиваемый справочник категорий и заполнить его по требованиям банка первоначальными значениями.
<br>
Принадлежность кредитного договора к той или иной категории указывается на карточке КД (кредитного договора). В течении жизни договора категория КД может изменяться, при этом необходимо сохранять историю изменения категории КД.
<br>
В зависимости от категории КД сумма комиссии за обслуживание кредита (в рамках данной задачи – периодическая комиссия, взимаемая ежемесячно) начисляется либо в полной сумме, либо в размере коэффициента от полной суммы, задаваемого на категории КД."




## 1.
Справочник с льготными коэфами и проверка на уникальность:<br>
![Screenshot_1](https://user-images.githubusercontent.com/103268341/214564517-2c363cd0-33ad-4d4c-a2e8-8dcc0329a783.png)
<br>
Так же поля Код, Наименование, Коэф были обязательными, реализовал на каждую ситуацию соответствующую проверку:
<br>![image](https://user-images.githubusercontent.com/103268341/214564160-b1c90832-9488-4958-aa62-6cf54c8e3f70.png)
<br><br>
Проверка на уникальность:
<br>![image](https://user-images.githubusercontent.com/103268341/214564877-879c455f-5fb0-4d7a-ab1b-34ab70529cde.png)

<br>

## 2.
Так же нужно было сделать собственный вид кредита в системе, что бы не мешать другим студентам, ниже в справочнике находятся именно такие кредиты.
<br>Справочник с историей :
<br>![image](https://user-images.githubusercontent.com/103268341/214565714-c971a9e9-614f-4dca-bf5b-199216cef0b4.png)
<br> Так же как и выше были созданы проверки с обязательным заполнением полей. 
<br> Еще было реализовано несколько проверок связанных с датой. Код можно посмотреть по ссылке - <a href="https://github.com/phello57/cftdevelop/blob/main/S38_KREDIT_LOAN/NEW_AUTO.plp">здесь<a/>
