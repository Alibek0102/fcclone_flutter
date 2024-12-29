import 'package:fcbook_clone/models/models.dart';

const User currentUser = User(
  name: 'Alibek Yessetov', 
  imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/jason-statham-attends-the-press-conference-of-director-f-gary-grays-film-the-fate-of-the-furious-on-march-23-2017-in-beijing-china-photo-by-vcg_vcg-via-getty-images-square.jpg'
);

const List<User> onlineUsers = [
  User(
    name: "Kazybek T", 
    imageUrl: 'https://goldenglobes.com/wp-content/uploads/2023/10/17-tomcruiseag.jpg'
  ),
  User(
    name: "Nurzhik I", 
    imageUrl: 'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2024/08/896/500/GettyImages-1200624305-scaled.jpg?ve=1&tl=1'
  ),
  User(
    name: 'Abylaikhan K', 
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlpWNzTJiKOZ_29OXIwSl_7TxgNXhxVBvz3A&s'
  )
];

final List<Story> stories = [
  Story(
    user: onlineUsers[0], 
    imageUrl: 'https://www.wanderlustmagazine.com/wp-content/uploads/2023/11/1-nur-sultan-shutterstock_1082921567-web-853x1280.jpg'
  ),
  Story(
    user: onlineUsers[2], 
    imageUrl: 'https://zhetysu.edu.kz/wp-content/uploads/2021/04/55897240_329304124385786_7578001904349741056_n.jpg'
  ),
  Story(
    user: onlineUsers[1], 
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOsk0O2KgijuMaEH_Zy5-o46FEENobz1pnxg&s'
  ),
];

final List<Post> storyPosts = [
  Post(
    user: currentUser, 
    caption: 'Не бойтесь пробовать новое! Каждый маленький шаг вперёд открывает огромные горизонты.', 
    timeAgo: '58m', 
    imageUrl: 'https://unsplash.com/photos/a-piece-of-cardboard-with-the-words-your-time-is-now-written-on-it-w5_tbFyYFUA', 
    likes: 34, 
    comments: 2, 
    shares: 1
  ),
  Post(
    user: onlineUsers[2], 
    caption: 'Успех — это не конечная точка, а путь. Главное — не останавливаться.', 
    timeAgo: '2hr', 
    imageUrl: null, 
    likes: 48, 
    comments: 3, 
    shares: 2
  ),
  Post(
    user: onlineUsers[1], 
    caption: 'Давайте вместе поставим цель на этот месяц: стать более организованными и продуктивными.', 
    timeAgo: '3hr', 
    imageUrl: 'https://unsplash.com/photos/difficult-roads-lead-to-beautiful-destinations-desk-decor-z1d-LP8sjuI', 
    likes: 110, 
    comments: 20, 
    shares: 4
  )
];