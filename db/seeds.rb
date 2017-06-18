Recipient.create(
  email: 'jaroslav.typitsky@gmail.com',
  first_name: 'Yaroslav',
  last_name: 'Typitskyi',
  gender: 0,
  birthday: '12/02/1996'.to_date,
  mood: '4/7'
)
Recipient.create(
  email: 'vlad@active-bridge.com',
  first_name: 'Vladislav',
  last_name: 'Typitskyi',
  gender: 0,
  birthday: '12/02/1996'.to_date,
  mood: '5/9'
)

#Morning
Info.create(
  body: "Ми знаходимося тут, щоб внести свій внесок у цей світ. Інакше навіщо ми тут?",
  purpose: 0
)
Info.create(
  body: "Ми їмо їжу, яку вирощують інші люди. Ми носимо одяг, який зшили інші люди. Ми говоримо на мовах, які були придумані іншими людьми. Думаю, прийшов час і нам стати корисними людству.",
  purpose: 0
)
Info.create(
  body: "Тільки наявність мети приносить життя сенс і задоволення. Це сприяє не тільки поліпшенню здоров'я і довголіття, але також дає вам крапельку оптимізму у важкий час.",
  purpose: 0
)
Info.create(
  body: "Пам'ять про те, що я скоро помру - найважливіший інструмент, який допомагає мені приймати складні рішення в моєму житті. Тому що все інше - чужа думка, вся ця гордість, вся ця боязнь збентеження або провалу - усі ці речі падають перед обличчям смерті, залишаючи лише те, що дійсно важливо. Пам'ять про смерть - кращий спосіб уникнути думок про те, що вам є що втрачати. Ви вже голий. У вас більше немає причин не йти на поклик свого серця.",
  purpose: 0
)
Info.create(
  body: "Бути найбагатшою людиною на кладовищі для мене неважливо. Лягаючи спати, говорити собі про те, що зробив щось прекрасне - ось що справді важливо.",
  purpose: 0
)

#Motivation
Info.create(
  body: "Це не театр одного актора. Дві речі вдихають нове життя в цю компанію. По-перше, у цій компанії дуже багато по-справжньому талановитих людей, яким весь світ ось уже кілька років говорив, що вони невдахи - і деякі з них були майже готові повірити в це самі. Але вони не невдахи. Чого їм не вистачало, так це хорошою команди тренерів, хорошого плану. Хорошого старшого менеджменту. Але тепер у них це є.",
  purpose: 1
)
Info.create(
  body: "Бути м'яким з людьми - не моя робота. Моя робота - робити їх кращими. Моя робота - брати з різних частин компанії, розчищати шляхи і збирати ресурси для ключових проектів. Взяти цих чудових людей, які є у нас, і підштовхувати їх, і робити їх ще краще, пропонувати їм більш сміливе бачення того, яким має бути майбутнє.",
  purpose: 2
)
Info.create(
  body: "Я думаю, якщо ви зробили щось, і воно вийшло досить непогано - ви повинні піти і зробити щось ще, не зупиняючись на місці занадто надовго. Просто вирішіть, що буде далі.",
  purpose: 1
)
Info.create(
  body: "Немає такого поняття, як успішна людина, яка жодного разу не оступився і не допустив помилки. Є тільки успішні люди, які допустили помилки, але потім змінили свої плани, грунтуючись на цих самих помилках. Я як раз один з таких хлопців.",
  purpose: 1
)
Info.create(
  body: "Є тільки один спосіб виконати велику роботу - полюбити її. Якщо ви до цього не дійшли, почекайте. Не беріться за справу. Нехай спочатку серце підкаже його вам.",
  purpose: 3
)
Info.create(
  body: "Хороші художники створюють, великі художники крадуть, а справжні художники - виконують замовлення вчасно.",
  purpose: 1
)

#messages
Message.create(body: Info.morning.sample.body, status: 0, purpose: 0, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.morning.sample.body, status: 0, purpose: 0, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.morning.sample.body, status: 0, purpose: 0, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.morning.sample.body, status: 0, purpose: 0, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)

Message.create(body: Info.motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)

Message.create(body: Info.extra_motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.extra_motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.extra_motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)

Message.create(body: Info.super_motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
Message.create(body: Info.super_motivation.sample.body, status: 0, purpose: 1, recipient: Recipient.all.sample, created_at: (Date.today - 5.days..Date.today).to_a.sample)
