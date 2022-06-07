class User {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrl;
  final String bio;
  final String jobTilte;

  const User(
      {required this.id,
      required this.age,
      required this.bio,
      required this.imageUrl,
      required this.jobTilte,
      required this.name});

      List<Object?> get progs =>[id,name,age,imageUrl,bio,jobTilte];

      static List<User> users = [
        const User(id: 1, age: 24, bio: 'Send ut unde moni natus error sit.',
        imageUrl:[
            'https://image-us.24h.com.vn/upload/2-2020/images/2020-05-01/1588322522-295-anh-2-1588320660-width650height810.jpg',
            'https://gamelandvn.com/photo/wp-content/uploads/2021/05/anh-nguoi-mau-zhang-anna-jo-anna-thumbnail.jpg',
            'https://upanh123.com/wp-content/uploads/2021/01/anh-hotgirl-toc-dai-dep0-1024x1024.jpg',
            'https://ttk16.com/wp-content/uploads/2021/11/hot-girl-trang-pham-3-1.jpg'
        ], 
        jobTilte: 'Student', name: 'Hani'),
        const User(id: 2, age: 19, bio: 'Send ut unde moni natus error sit.',
        imageUrl:[
            'https://gamek.mediacdn.vn/133514250583805952/2020/7/7/photo-1-1594098002042331340775.jpg',
            'https://www.gocbao.com/wp-content/uploads/2020/04/top-nhung-hinh-girl-han-quoc-de-thuong-cute-nhat-12-405x400-1.jpg',
            'https://evaviet.vn/wp-content/uploads/2020/11/Hot-face-Nguy%E1%BB%85n-Lan-Anh-04.jpg',
            'https://bloggioitre.net/wp-content/uploads/2021/05/hot-girl-de-thuong-dang-yeu.jpg'
        ], 
        jobTilte: 'Student', name: 'Anna'),
        const User(id: 3, age: 23, bio: 'Send ut unde moni natus error sit.',
        imageUrl:[
            'https://hinhgaixinh.com/wp-content/uploads/2021/03/20210314-phuong-anh-9x-7-600x899.jpg',
            'https://tienhieptruyenky.com/anh-hot-girl/imager_98_6297_700.jpg',
            'https://anhgaisexy.com/wp-content/uploads/2021/12/20210826-hong-le-6-370x500.jpg',
            'https://1.bp.blogspot.com/-a-GO0cVmnuE/XcWkLlMcWrI/AAAAAAAATMY/3QfOrHzXeYoRS7qMAzVCa8BrHAwnmCncQCLcBGAsYHQ/s1600/hinh-anh-hot-girl-xinh-han-quoc-wap102-com%2B%25281%2529.jpg'
        ], 
        jobTilte: 'Student', name: 'Naruto'),
        const User(id: 4, age: 17, bio: 'Send ut unde moni natus error sit.',
        imageUrl:[
            'https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/thutrang/2020_09_03/5/dan-hot-girl-hoc-duong-spotlight-nho-anh-doi-thuong-cuc-xinh-hinh-11.jpg',
            'https://upanh123.com/wp-content/uploads/2019/05/hinh-anh-hotgirrl.jpg',
            'https://1.bp.blogspot.com/-ePcFCY9EXmY/XfXnbzZ6t9I/AAAAAAAAUUc/m_gG_Iw2CgEFTJSIyR-8M5WhTzvV112zgCLcBGAsYHQ/s1600/Hinh-Anh-Hot-Girl-Facebook-Wap102-Com%2B%252834%2529.jpg',
            'https://vieclamthemonline.com/wp-content/uploads/2021/10/hinh-anh-tram-anh.jpg'
        ], 
        jobTilte: 'Student', name: 'Shina'),
        const User(id: 5, age: 18, bio: 'Send ut unde moni natus error sit.',
        imageUrl:[
            'https://media-cdn-v2.laodong.vn/Storage/newsportal/2019/4/12/727649/Tram-Anh1.jpg',
            'https://tapchianhdep.com/wp-content/uploads/2020/06/16-7.jpg',
            'http://blogcontrai.com/wp-content/uploads/2018/07/hot-girl-10x-1-e1531839516140.jpg',
            'https://diendanseovietnam.edu.vn/anh-con-gai-ca-tinh/imager_26089.jpg'
        ], 
        jobTilte: 'Student', name: 'Rom'),
      ];
}
