Итоговый проект Лобанчикова Артёма по курсу "ЦФТ разработчик" ШИФТ<br>
Напротив каждого пункта ссылка на файл с кодом операции

## Задача итогового проекта:
В Банке имеется собственная особая система категоризации кредитных договоров. Можно задать принадлежность кредита к стандартной категории, либо к какой-либо льготной категории, которая определяет скидку при начислении комиссий по кредиту.
<br><br>
Для этого в системе необходимо реализовать настраиваемый справочник категорий и заполнить его по требованиям банка первоначальными значениями.
<br><br>
Принадлежность кредитного договора к той или иной категории указывается на карточке КД (кредитного договора). В течении жизни договора категория КД может изменяться, при этом необходимо сохранять историю изменения категории КД.
<br><br>
В зависимости от категории КД сумма комиссии за обслуживание кредита (в рамках данной задачи – периодическая комиссия, взимаемая ежемесячно) начисляется либо в полной сумме, либо в размере коэффициента от полной суммы, задаваемого на категории КД.
<br><br>
Необходимо было создать:<br>
ТБП с льготными коэффицентами<br>
ТБП с принадлежностью Льгот. Коэф. к Кредитам<br>
Операцию автоматического создания и удаления всего функционала<br>
Разобраться с Вычислямым параметром, что-бы спланировать выплаты по кредиту<br>
У новых документах о переводе средств проверять принадлежность дебет счета или кредит счета на Кредит. Записывать в "Историю состояний" строку с льгот. коэфом.<br>
Операцию с выводом документов, у которых есть определенная запись в массиве состояний, в EXCEL и XML<br>


## 1. <a href="https://github.com/phello57/cftdevelop/blob/main/S38_KREDIT_LOAN/NEW_AUTO.plp">Код<a/> 
Справочник с льготными коэфами и проверка на уникальность:<br>
![Screenshot_1](https://user-images.githubusercontent.com/103268341/214564517-2c363cd0-33ad-4d4c-a2e8-8dcc0329a783.png)
<br>
Так же поля Код, Наименование, Коэф были обязательными, реализовал на каждую ситуацию соответствующую проверку:
<br>![image](https://user-images.githubusercontent.com/103268341/214564160-b1c90832-9488-4958-aa62-6cf54c8e3f70.png)
<br><br>
Проверка на уникальность:
<br>![image](https://user-images.githubusercontent.com/103268341/214564877-879c455f-5fb0-4d7a-ab1b-34ab70529cde.png)

<br>

## 2. <a href="https://github.com/phello57/cftdevelop/blob/main/S38_KREDIT_INFO/NEW_AUTO.plp">Код<a/> 
Так же нужно было сделать собственный вид кредита в системе, что бы не мешать другим студентам, ниже в справочнике находятся именно такие кредиты.
<br>Справочник с историей :
<br>![image](https://user-images.githubusercontent.com/103268341/214565714-c971a9e9-614f-4dca-bf5b-199216cef0b4.png)
<br> Так же как и выше были созданы проверки с обязательным заполнением полей. 
<br> Еще было реализовано несколько проверок связанных с датой. Код можно посмотреть по ссылке в заголовке

## 3.
  Для передачи доработки в банк было необходимо создать операцию, которая бы создала необходимые льготные категории, функционал, который будет представлен ниже и заполнить справочник из пункта 2.
  <br>
 
 Операция создания всего функционала -  <a href="https://github.com/phello57/cftdevelop/blob/main/CONV_57/U20221127_S38_01.plp">Код<a/>
  <br>
  Логи :
  <br>
  ![image](https://user-images.githubusercontent.com/103268341/214572145-a40ce493-758e-4b0e-802e-b60a98e62c6e.png)
<br>
Операция удаления всего функционала -  <a href="https://github.com/phello57/cftdevelop/blob/main/CONV_57/U20221228_S38_D.plp">Код<a/>
   <br>
  Логи :
  <br>
![image](https://user-images.githubusercontent.com/103268341/214572209-9e66c0d6-07af-463b-81a0-5acb752ce00b.png)
<br>

  
  
## 4. <a href="https://github.com/phello57/cftdevelop/blob/main/MAIN_DOCUM/S38_MARKING_L.plp">Код<a/> 
<br>
Необходимо было помечать документы, которые по кредитовому или дебетовому счету принадлежат к кредитам моей доработки
<br>
Пометку необходимо было реализовать в массиве "История состояний" записью с категорией по кредиту
<br>
  
![image](https://user-images.githubusercontent.com/103268341/214574190-85245b42-a9bd-496c-9960-73bc05254883.png)

<br>
S38_NOTE_CAT .7 - либо у дебетового счета, либо у кредитового ставка льготы 0.7 - Льготная 70%
<br>

## 5.
Так же нужно было спланировать проценты по кредиту в зависимости от категории, принадлежащей этому кредиту
  
<br>
Работал с вычисляемым параметром и вводил его для кредита
<br>

![image](https://user-images.githubusercontent.com/103268341/214580653-32052534-1d3b-4fa7-b28d-e1eed8381fe3.png)

<br>
У кредита .5 ставка, а выч. пар = 1000 * [ЛЬГОТ_КОЭФ]

<br>
  
## 6. <a href="https://github.com/phello57/cftdevelop/blob/main/MAIN_DOCUM/S38_EXPORT_L_2.plp">Код<a/>
Необходимо было по документам, у которых есть запись из 4 пункта сделать выгрузку в EXCEL и XML
<br>
![image](https://user-images.githubusercontent.com/103268341/214581797-ba63d304-4e06-431f-9b0d-9625ca3733d4.png)

<br>EXCEL :
<br>
![image](https://user-images.githubusercontent.com/103268341/214582401-89c60d88-fc9d-4289-887d-41b8f488459a.png)
<br>
<br>XML :
<br>
![image](https://user-images.githubusercontent.com/103268341/214582689-450af7e8-6cfc-42c3-9a23-40e4b539e7af.png)
<br>
  
<br>
