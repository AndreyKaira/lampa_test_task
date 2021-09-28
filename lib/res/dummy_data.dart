import 'package:lampa_test_task/entity/child/child.dart';
import 'package:lampa_test_task/entity/comment/comment.dart';
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/entity/news/theme_day_news/theme_day_news.dart';
import 'package:lampa_test_task/entity/theme/theme.dart';
import 'package:lampa_test_task/entity/user/user.dart';

final List<User> dummyUsers = [
  User(
    id: '0',
    name: 'Lera Klymchenko',
    image:
        'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg',
    childs: <Child>[
      Child(
        id: '0',
        gender: GenderEnum.boy,
        bithday: DateTime(2021, 8, 12),
      ),
      Child(
        id: '1',
        gender: GenderEnum.girl,
        bithday: DateTime(2020, 6, 14),
      ),
    ],
  ),
  User(
    id: '1',
    name: 'Anna Ivanova',
    image: 'https://cdn-icons-png.flaticon.com/512/219/219971.png',
    childs: <Child>[
      Child(
        id: '2',
        gender: GenderEnum.boy,
        bithday: DateTime(2018, 10, 12),
      ),
    ],
  ),
  User(
    id: '2',
    name: 'Irina Alexandrova',
    image:
        'https://thumbs.dreamstime.com/b/woman-avatar-vector-illustration-cartoon-beautiful-girl-flat-design-style-avatar-business-woman-female-avatar-face-icon-bl-90994514.jpg',
    childs: <Child>[],
  ),
  User(
    id: '3',
    name: 'Larisa Anderson',
    childs: <Child>[
      Child(
        id: '2',
        gender: GenderEnum.girl,
        bithday: DateTime(2010, 5, 28),
      ),
    ],
  ),
];

final List<Theme> dummyThemes = <Theme>[
  Theme(id: '0', name: 'Тема дня'),
  Theme(id: '1', name: 'От рождения до года'),
  Theme(id: '2', name: 'Воспитание'),
];

final List<INews> dummyNews = <INews>[
  ThemeDayNews(
    id: '0',
    theme: dummyThemes[0],
    content: 'А как Вы с любимым ласково называете друг друга?',
    type: TypeNews.themeDayNews,
  ),
  RegularNews(
    id: '1',
    theme: dummyThemes[1],
    title: 'Погодки!',
    content:
        'Мы начинали знакомство с языками с помощью мультиков и песенок. Дочка пела, показывала все и пробовала называть слова на английском. Даже когда еще на родном языке слабо разговаривала. И вы правы, сложно это делать регулярно. Пока была в декрете, то и времени для занятий было много, а теперь, после работы, сложно выделить силы и время для занатятий',
    postTime: DateTime(2021, 9, 28),
    likes: 5,
    comments: [
      Comment(
        id: '0',
        user: dummyUsers[1],
        content:
            'Когда сыну было 3 мы ходили в кружок по английскому. Там с детками занимались считалками-песенками с пританцовыванием и проговариванием частей тела и действий. Касались частей тела в игровой присказке. Лепили буквы,собирали их из палочек,рисовали, собирали из мозаики, делали аппликации. Счет учили считалками. Читали знакомые сказки, в которых заменяли русские существительные на английские. Потом заменили глаголы, потом прилагательные. Много пели и играли. В игровой форме быстрее идет усвоение материала. Дети не так устают. Дома на прогулке называли деревья, цветы,животных, погодные условия. У себя дома- предметы обихода и обстановку. Ненавязчиво, мимоходом.',
      ),
    ],
    type: TypeNews.regularNews,
    user: dummyUsers[0],
  ),
  RegularNews(
    id: '2',
    theme: dummyThemes[1],
    title: 'Постановка на учет новорожденного и подписания декларации с педиатром',
    content:
        'Всем привет. Мы недавно родились и выписались из роддома. Такая ситуация, ещё когда лежали в роддоме после родов, дали бумажку, сказали поехать в поликлинику по месту жительства и поставить на учёт ребёнка. Так получилось что я поехал туда уже после выписки домой. Поехал в детскую поликлинику номер 2, сказал адрес проживания махачкалинская 9, но живём мы по факту на бочарова 44б (я знал что если скажу адрес проживания то отправят куда то в черт пойми куда, т.к наш адрес это уже область).',
    postTime: DateTime(2021, 9, 28),
    likes: 4,
    comments: [],
    user: dummyUsers[2],
    type: TypeNews.regularNews,
    image: 'https://medportal.ru/pictures/article/326a9683-9b56-4f56-a911-7b353b41829d/medium.jpg',
  ),
  RegularNews(
    id: '3',
    theme: dummyThemes[2],
    title: 'Дети-вегетарианцы. Общение родителей-сторонников.',
    content: 'По какой причине Ваш ребенок не употребляет в пищу продукты животного происхождения?',
    postTime: DateTime(2021, 9, 28),
    likes: 8,
    type: TypeNews.regularNews,
    comments: [
      Comment(
        id: '1',
        user: dummyUsers[1],
        content: 'А папа тоже вегетарианец?',
      ),
    ],
    user: dummyUsers[2],
  ),
  RegularNews(
    id: '4',
    theme: dummyThemes[2],
    title: 'Кафе в центре города с лабиринтом для детей',
    content:
        'Посоветуйте, пожалуйста, уютное кафе в центре города с лабиринтом для детей и с разумной ценовой политикой.\nПриезжают знакомые с ребенком, и у нас двое деток. Нам, взрослым надо спокойно пообщаться, чтобы при этом дети не скучали, порезвились рядом и были в поле зрения. Кадор Кидс и Тилли Вилли отпали. Там мы не сможем сидеть общаться и присматривать за детьми. Советуют Дитячу Планету, но там, похоже, тоже слишком большое пространство и невозможно присматривать за детьми сидя за сто',
    postTime: DateTime(2021, 9, 27),
    type: TypeNews.regularNews,
    likes: 5,
    comments: [
      Comment(
        id: '2',
        user: dummyUsers[1],
        content: 'Поляна сказок на Новосельского 100',
      ),
      Comment(
        id: '3',
        user: dummyUsers[3],
        content:
            'Спасибо, мне как-то не приглянулось это место. По совету одной из форумчанок ходили в Жоржик.',
      ),
    ],
    user: dummyUsers[3],
  ),
  RegularNews(
    id: '5',
    theme: dummyThemes[2],
    title: 'Вопрос мамочкам, планирующим третьего и более детишек.',
    content:
        'Девочки, я сегодня читала наш форум и вот в связи с этим у меня возник вопрос, а как содержать троих и более деток, как их воспитывать, как вы строите карьеру??? Я ни в коем случае ни противник многодетных мамочек, мне реально искренне от всей души любопытно:))',
    postTime: DateTime(2021, 9, 27),
    type: TypeNews.regularNews,
    likes: 1,
    comments: [
      Comment(
        id: '2',
        user: dummyUsers[1],
        content: 'Наших детей можно удивить , если им ничего не купишь...',
      ),
      Comment(
        id: '2',
        user: dummyUsers[2],
        content: 'Добрый день, меня зовут Ирина, после беременности я очень поправилась и искала способы похудеть за небольшой промежуток времени, и у меня получилось. Ровно пол года назад я весила 120 кг. Купила материал как похудеть и всего за полгода я сбросила 60кг. Именно тут бесплатно я рассказала как я это сделала: http://failonex.ru/file/56ce0e. Удачи)',
      ),
      Comment(
        id: '3',
        user: dummyUsers[0],
        content:
            'Спасибо девочки за ответы:)к сожалению мало конкретных ответов именно на сами вопросы. мы пустились в рассуждения на тему кто лучше работающая или неработающая мама, а это тема "вредная" т.к. у каждого свое мнение на этот счет и все люди разные:) ',
      ),
    ],
    image: 'https://zn48.ru/krr/assets/img/razvitie.png',
    user: dummyUsers[0],
  ),
];
