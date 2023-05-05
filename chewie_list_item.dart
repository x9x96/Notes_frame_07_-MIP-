import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:frame_07/Body_Layout_State.dart';
import 'package:photo_view/photo_view.dart';

class Zoomer extends StatelessWidget {@override
  Widget build(BuildContext context) {return Scaffold(body: GestureDetector(child: Center(child: Hero(tag: 'imageHero',
              child: PhotoView(imageProvider: NetworkImage('https://images.pexels.com/photos/7693336/pexels-photo-7693336.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')))), onTap: () {Navigator.pop(context);}),);}}

class CC{
  static const Color ApBa_Title_Col = Colors.black45;
  static const Color Bg_Subj_Page = Color.fromRGBO(230, 230, 230, 1);
  static TextStyle video_recom_txt_1 = TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: Colors.deepPurple);
  static TextStyle video_recom_txt_2 = TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black54);
  static TextStyle Topic_Heading = TextStyle(fontWeight: FontWeight.w500, fontSize: 23, letterSpacing: 1, color: CC.ApBa_Title_Col);
  static TextStyle Topic_Indexer = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purple[700], fontStyle: FontStyle.italic);
  static TextStyle SubHead_Unbold = TextStyle(fontSize: 15,color: Colors.black);
  static TextStyle SubHead_Bold = TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black, fontStyle: FontStyle.italic);
  static TextStyle Intro_topic = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle Subj_List_txt_styl = TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 2, 3, 0.6));
  static TextStyle App_Ba_Styl = TextStyle(fontStyle: FontStyle.italic, color: CC.ApBa_Title_Col, fontWeight: FontWeight.bold);
  static TextStyle Sub_txt_styl = TextStyle(fontStyle: FontStyle.italic);
  static TextStyle Sub_txt_styl_2 =  TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontStyle: FontStyle.italic, color: Color.fromRGBO(0, 2, 3, 0.6));
  static TextStyle Menu_items_styl = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(10, 10, 10, 0.7));
  static TextStyle Select_somtin_styl = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.grey);
  static TextStyle Menu_content_header = TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, fontSize: 26, letterSpacing: 2, color: Colors.black54);
}

class ZoomerCon extends StatelessWidget {
  ZoomerCon({@required this.child});
  final Widget child;
  @override Widget build(BuildContext context) {
    return Scaffold(body: GestureDetector(child: Center(child: child), onTap: () {Navigator.pop(context);}));}}

class P5_COM_T1_P1_B3_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/Computer-network.jpg')));}}

class P5_COM_T1_P1_B4_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/set-of-home-audio-video-electronic-devices-BTYJFF.jpg')));}}

class P5_COM_T1_P1_B5_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/storage-devices.jpg')));}}

class P5_COM_T1_P1_B6_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/smartphones.jpg')));}}
//____________________________________________________
class P5_COM_T1_P2_B1_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/typing.jpg')));}}

class P5_COM_T1_P2_B2_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/phonecall.jpg')));}}

class P5_COM_T1_P2_B3_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/video-camera.jpeg')));}}

class P5_COM_T1_P2_B4_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/earpiece.jpg')));}}

class P5_COM_T1_P2_B5_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/mobile-apps.jpg')));}}

class P5_COM_T1_P2_B6_I1_Zoomer extends StatelessWidget {@override
Widget build(BuildContext context) {return ZoomerCon(child: PhotoView(imageProvider: AssetImage('assets/Social-Networking-Services.jpg')));}}
//____________________________________________________

class ChewieListItem extends StatefulWidget {
  // This will contain the URL/asset path which we want to play
  final VideoPlayerController videoPlayerController; final bool looping; final bool autoplay;

  ChewieListItem({
    @required this.videoPlayerController,
    this.looping, this.autoplay,
    Key key,}) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();}

class _ChewieListItemState extends State<ChewieListItem> {
  ChewieController _chewieController;
  
  @override
  void initState() {super.initState();
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController, aspectRatio: 16 / 13,
      // Prepare the video to be played and display the first frame
      autoInitialize: true, autoPlay: widget.autoplay, looping: widget.looping,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(child: Text(errorMessage, style: TextStyle(color: Colors.lightGreen[200]),),);},);}

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(0.0), child: Chewie(controller: _chewieController,),);}

  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
    widget.videoPlayerController.pause();
    _chewieController.pause();
  }
}


//_P1_B3: Definition of Computers
Widget P5_COM_T1_P1_B3_I1 =Image(image: AssetImage('assets/Computer-network.jpg'), fit: BoxFit.cover);
//_P1_B4: Definition of Audio/video
Widget P5_COM_T1_P1_B4_I1 =Image(image: AssetImage('assets/set-of-home-audio-video-electronic-devices-BTYJFF.jpg'), fit: BoxFit.cover);
//_P1_B5: Definition of  Storage devices
Widget P5_COM_T1_P1_B5_I1 =Image(image: AssetImage('assets/storage-devices.jpg'), fit: BoxFit.cover);
//_P1_B6: Definition of Smartphones
Widget P5_COM_T1_P1_B6_I1 =Image(image: AssetImage('assets/smartphones.jpg'), fit: BoxFit.cover);
//___________________________________________

//_P1_B3: For typing of documents
Widget P5_COM_T1_P2_B1_I1 =Image(image: AssetImage('assets/typing.jpg'), fit: BoxFit.cover);
//_P1_B4: Making and receiving calls
Widget P5_COM_T1_P2_B2_I1 =Image(image: AssetImage('assets/phonecall.jpg'), fit: BoxFit.cover);
//_P1_B5: Video capture
Widget P5_COM_T1_P2_B3_I1 =Image(image: AssetImage('assets/video-camera.jpeg'), fit: BoxFit.cover);
//_P1_B6: Listening to music
Widget P5_COM_T1_P2_B4_I1 =Image(image: AssetImage('assets/earpiece.jpg'), fit: BoxFit.cover);
//_P1_B5: Downloading various applications
Widget P5_COM_T1_P2_B5_I1 =Image(image: AssetImage('assets/mobile-apps.jpg'), fit: BoxFit.cover);
//_P1_B6: Internets and social network.
Widget P5_COM_T1_P2_B6_I1 =Image(image: AssetImage('assets/mobile-apps.jpg'), fit: BoxFit.cover);
//___________________________________________

class P5_COM_T1_EXERCISE extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle_2(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(P5_COM_T1_EXERCISE_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}

class P5_COM_T1_P1_B1 extends StatelessWidget {@override Widget build(BuildContext context) { return ClassBlockStyle(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(P5_COM_T1_P1_B1_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}
class P5_COM_T1_P1_B2 extends StatelessWidget {@override Widget build(BuildContext context) { return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(P5_COM_T1_P1_B2_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}
class P5_COM_T1_P1_B3 extends StatelessWidget {@override Widget build(BuildContext context) {
    return ClassBlockStyle(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(text: TextSpan(style: CC.SubHead_Unbold, children: <TextSpan>[
                new TextSpan(text: '1. Computers : ', style: CC.SubHead_Bold),
                new TextSpan(text:P5_COM_T1_P1_B3_N.texter)])),
          Img_Con(child: Column(children: [
              Text('Fig 1.1', style: CC.SubHead_Bold),
              GestureDetector(child: P5_COM_T1_P1_B3_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {return P5_COM_T1_P1_B3_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P1_B4 extends StatelessWidget {@override Widget build(BuildContext context) {
  return ClassBlockStyle(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(text: TextSpan(style: CC.SubHead_Unbold, children: <TextSpan>[
              new TextSpan(text: '2. Audio/video : ', style: CC.SubHead_Bold),
              new TextSpan(text:P5_COM_T1_P1_B4_N.texter)])),
        Img_Con(child: Column(children: [
              Text('Fig 1.2', style: CC.SubHead_Bold),
              GestureDetector(child: P5_COM_T1_P1_B4_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {return P5_COM_T1_P1_B4_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P1_B5 extends StatelessWidget {@override Widget build(BuildContext context) {
  return ClassBlockStyle(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(text: TextSpan(style: CC.SubHead_Unbold, children: <TextSpan>[
              new TextSpan(text: '3. Storage devices : ', style: CC.SubHead_Bold),
              new TextSpan(text:P5_COM_T1_P1_B5_N.texter)])),
        Img_Con(child: Column(children: [
              Text('Fig 1.3', style: CC.SubHead_Bold),
              GestureDetector(child: P5_COM_T1_P1_B5_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {return P5_COM_T1_P1_B5_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P1_B6 extends StatelessWidget {@override Widget build(BuildContext context) {
  return ClassBlockStyle(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(text: TextSpan(style: CC.SubHead_Unbold, children: <TextSpan>[
              new TextSpan(text: '4. Smartphones : ', style: CC.SubHead_Bold),
              new TextSpan(text:P5_COM_T1_P1_B6_N.texter)])),
        Img_Con(child: Column(children: [
              Text('Fig 1.4', style: CC.SubHead_Bold),
              GestureDetector(child: P5_COM_T1_P1_B6_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {return P5_COM_T1_P1_B6_I1_Zoomer();}));})]))]));}}
//___________________________________________

class P5_COM_T1_P2_B1 extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         Text('1. For typing of documents', style: CC.SubHead_Bold,),
         Img_Con(child: Column(children: [
              Text('Fig 1.1', style: CC.SubHead_Bold),
              GestureDetector(child: P5_COM_T1_P2_B1_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return P5_COM_T1_P2_B1_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P2_B2 extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('2. Making and receiving calls', style: CC.SubHead_Bold,),
      Img_Con(child: Column(children: [
        Text('Fig 1.2', style: CC.SubHead_Bold),
        GestureDetector(child: P5_COM_T1_P2_B2_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {
          return P5_COM_T1_P2_B2_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P2_B3 extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('3. Video capture', style: CC.SubHead_Bold,),
      Img_Con(child: Column(children: [
        Text('Fig 1.3', style: CC.SubHead_Bold),
        GestureDetector(child: P5_COM_T1_P2_B3_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {
          return P5_COM_T1_P2_B3_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P2_B4 extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('4. Listening to music', style: CC.SubHead_Bold,),
      Img_Con(child: Column(children: [
        Text('Fig 1.4', style: CC.SubHead_Bold),
        GestureDetector(child: P5_COM_T1_P2_B4_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {
          return P5_COM_T1_P2_B4_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P2_B5 extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('5. Downloading various applications', style: CC.SubHead_Bold),
      Img_Con(child: Column(children: [
        Text('Fig 1.5', style: CC.SubHead_Bold),
        GestureDetector(child: P5_COM_T1_P2_B5_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {
          return P5_COM_T1_P2_B5_I1_Zoomer();}));})]))]));}}
class P5_COM_T1_P2_B6 extends StatelessWidget {@override Widget build(BuildContext context) {return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('6. Internets and social network', style: CC.SubHead_Bold,),
      Img_Con(child: Column(children: [
        Text('Fig 1.6', style: CC.SubHead_Bold),
        GestureDetector(child: P5_COM_T1_P2_B6_I1, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) {
          return P5_COM_T1_P2_B6_I1_Zoomer();}));})]))]));}}
//___________________________________________

class P5_COM_T1_EXERCISE_N {static String texter = '(a). Mention at least 5 aspects of the human society influenced by the computer?'
      '\n\n(b). States 3 wrong  notions about computers?';}
//_P1_B1: Definition of Gadget
class P5_COM_T1_P1_B1_N {static String texter = 'A gadgets is a small technological object or appliance that is used to perform a particular function.';}
//_P1_B2: Examples of Gadget
class P5_COM_T1_P1_B2_N {static String texter = 'It can be classified into four (4) basic groups such as:'
      '\n\n 1. Computers \n\n 2. Audio/video \n\n 3. Storage devices \n\n 4. Smartphones ';}
//_P1_B3: Definition of Computers
class P5_COM_T1_P1_B3_N {static String texter = 'These are electronic devices or machines that accepts data as an input, processes the data and give information which is the output. Examples are laptops, desktops, IPad.';}
//_P1_B4: Definition of Audio/video
class P5_COM_T1_P1_B4_N {static String texter = 'These are devices that can be used to play an record music and videos. Examples are home theater, MP3 and mp4, handy cams, digital cameras. ';}
//_P1_B5: Definition of  Storage devices
class P5_COM_T1_P1_B5_N {static String texter = 'They are devices that can be used to store and transfer information from one system to another. Examples are: flash drive, external hard disk, CD and DVD disk, memory card, diskette.';}
//_P1_B6: Definition of Smartphones
class P5_COM_T1_P1_B6_N {static String texter = 'These are sophisticated phones that can be used to send and receive texts, snap and send photos, surf the internet and so many other things. Examples are Blackberry phones, android phones and iPad.';}

class COM_GADGET_P1_B7 {static String texter = 'A gadgets is a small technological object or appliance that is used to perform a particular function.';}
//______________________________________________________________________________________________________________________
//______________________________________________________________________________________________________________________ 
class P5_COM_T2_P1_B1 extends StatelessWidget {@override Widget build(BuildContext context) { return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(P5_COM_T2_P1_B1_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}
class P5_COM_T2_P1_B2 extends StatelessWidget {@override Widget build(BuildContext context) { return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(P5_COM_T2_P1_B2_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}
class P5_COM_T2_P1_B3 extends StatelessWidget {@override Widget build(BuildContext context) { return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(P5_COM_T2_P1_B3_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}
class P5_COM_T2_P1_B4 extends StatelessWidget {@override Widget build(BuildContext context) { return ClassBlockStyle(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(P5_COM_T2_P1_B4_N.texter, softWrap: true, style: CC.SubHead_Unbold)]));}}

//_P1_B1: Definition of Gadget
class P5_COM_T2_P1_B1_N {static String texter = 'Information technology (I.T) has become a great part of the human society. '
      '\n\nIt is incorporated in almost every area of our society where by computers help ensure smooth communication, online Bank transactions, education result on the  Internet, Security, exploration and exploitation of natural resources.';}
//_P1_B2: Examples of Gadget
class P5_COM_T2_P1_B2_N {static String texter = 'Aspects of Human Society influenced  by computers:'
      '\n\n 1. Communication \n\n 2. Security \n\n 3. Banking \n\n 2. Military  \n\n 5. Education \n\n 6. Hospitals  ';}
//_P1_B3: Definition of Computers
class P5_COM_T2_P1_B3_N {static String texter = 'Some wrong notions about I.T:'
      '\n\n 1. Too costly \n\n 2. Encourages job loss  \n\n 3. Negative religious beliefs ';}
//_P1_B4: Definition of Audio/video
class P5_COM_T2_P1_B4_N {static String texter = 'Career opportunities in computer :'
      '\n\n 1. Programming \n\n 2. Database management  \n\n 3. Graphic designer analyst \n\n 2. Web design and hosting   \n\n 5. Computer engineering  ';}
//______________________________________________________________________________________________________________________
//______________________________________________________________________________________________________________________
void Blank(BuildContext context) {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {   return Scaffold(
        appBar: AppBar(title: Text('Feature Currently Unavailable', style: CC.App_Ba_Styl), backgroundColor: Colors.white70),
        body: Center(child: Container(padding: EdgeInsets.only(bottom: 10), child: Text('Coming Soon',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 41)))));}));}
//______________________________________________________________________________________________________________________
//______________________________________________________________________________________________________________________
class SelectSomting extends StatelessWidget {
  SelectSomting({@required this.child});
  final Widget child; @override
  Widget build(BuildContext context) {return Card(color: Colors.purple[200], elevation: 13, child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1), border: Border.all(color: Colors.lightGreen[300]), borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Container(height: 25, child: child)));}}

class Selectaclass extends StatelessWidget {@override Widget build(BuildContext context) {
  return SelectSomting(child: Text('Select a Class', softWrap: true, textAlign: TextAlign.center, style: CC.Select_somtin_styl));}}

class SelectaSubj extends StatelessWidget {@override Widget build(BuildContext context) {
  return SelectSomting(child: Text('Select a Subject', softWrap: true, textAlign: TextAlign.center, style: CC.Select_somtin_styl));}}

class SelectaTop extends StatelessWidget {@override Widget build(BuildContext context) {
  return SelectSomting(child: Text('Select a Topic', softWrap: true, textAlign: TextAlign.center, style: CC.Select_somtin_styl));}}


Widget arrow_icon = new Icon(Icons.label, size: 30, color: Colors.purple[300]);
//______________________________________________________________________________________________________________________
//______________________________________________________________________________________________________________________
class TestContainer extends StatelessWidget {TestContainer({@required this.child, this.height, this.width, this.onTap, this.color});
  final Function onTap; final Widget child; final double height; final double width; final Color color;
  @override
  Widget build(BuildContext context) {return GestureDetector(onTap: onTap,
      child: Container(height: height, width: width, padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.all(Radius.circular(8))),
        child: child));}}

class SimpleContainer extends StatelessWidget {SimpleContainer({@required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {return Container();}}

class BlankContainer extends StatelessWidget {BlankContainer(); @override
  Widget build(BuildContext context) {return Container();}}

class CustomColumn extends StatelessWidget {CustomColumn({this.text, this.child});
  final String text; final Widget child;
  @override
  Widget build(BuildContext context) {return Column(children: [
        Text(text, style: TextStyle(fontSize: 18)),
        child]);}}
//______________________________________________________________________________________________________________________
//______________________________________________________________________________________________________________________
class PlayButt extends StatelessWidget {PlayButt(); @override
  Widget build(BuildContext context) {return Align(alignment: Alignment.center,child: RawMaterialButton(
        padding: EdgeInsets.all(10.0), elevation: 12.0, shape: CircleBorder(), fillColor: Colors.white70,
        child: Icon(Icons.play_arrow, color: Colors.purple[400], size: 37.0)));}}

class Stars_4 extends StatelessWidget {Stars_4(); @override
  Widget build(BuildContext context) {return Text('⭐ ⭐ ⭐ ⭐ ', style: TextStyle(fontSize: 15.0));}}

class Recom_vid extends StatelessWidget {Recom_vid(); @override
  Widget build(BuildContext context) {return Container(margin: const EdgeInsets.only(top:5), child: Text('(online)',
        style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1, fontSize: 14, color: Colors.red[400])));}}

class Slide_Contenu_Butt extends StatelessWidget {Slide_Contenu_Butt(); @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(10),margin: const EdgeInsets.only(top: 8, left: 20, bottom: 12, right: 20),
      decoration: BoxDecoration(color: Colors.purpleAccent[400], border: Border.all(color: Colors.indigoAccent[100]),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [BoxShadow(color: Color(0x80000000),blurRadius: 30.0, offset: Offset(0.0, 5.0))],
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.purpleAccent[400], Colors.deepPurple[900]])),
      height: 45,child: Center( child: Row(children: [
            Text(''),
            Icon(Icons.arrow_back_ios_rounded, color: Colors.red[300]),
            Icon(Icons.arrow_back_ios_rounded, color: Colors.yellowAccent[700]),
            Text('Slide Left To Continue', style: TextStyle(fontSize: 16, color: Colors.white70,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,)),
            Icon(Icons.arrow_back_ios_rounded, color: Colors.blue[300]),
            Icon(Icons.arrow_back_ios_rounded, color: Colors.green[300])])));}}

class Next_Sub_Butt extends StatelessWidget {Next_Sub_Butt(); @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(10),margin: const EdgeInsets.only(top: 8, left: 20, bottom: 12, right: 20),
      decoration: BoxDecoration(color: Colors.purpleAccent[400], border: Border.all(color: Colors.indigoAccent[100]),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [BoxShadow(color: Color(0x80000000), blurRadius: 30.0,offset: Offset(0.0, 5.0))],
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.purpleAccent[400], Colors.deepPurple[900]])),
      height: 45, child: Center(child: Text('Next Subject',style: TextStyle(fontSize: 19,color: Colors.white70,
    fontStyle: FontStyle.italic,fontWeight: FontWeight.bold))));}}

class TabIntro extends StatelessWidget {TabIntro(); @override
  Widget build(BuildContext context) { return Tab(icon: Icon(Icons.school_rounded,color: Colors.white,size: 20.0));}}

class TabStudy extends StatelessWidget {TabStudy(); @override
  Widget build(BuildContext context) {return Tab(icon: Icon(Icons.library_books, color: Colors.white, size: 20.0));}}

class TabTest extends StatelessWidget {TabTest(); @override
  Widget build(BuildContext context) {return Tab(icon: Icon(Icons.paste_rounded,color: Colors.black, size: 20.0));}}

class COM_ApBa extends StatelessWidget {COM_ApBa(); @override
  Widget build(BuildContext context) {return Text('COMPUTER SCIENCE' ,style: CC.App_Ba_Styl);}}

class EXERCISEHeader extends StatelessWidget {EXERCISEHeader(); @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.only(top: 16,bottom: 2),
    child: Text('Exercise', textAlign: TextAlign.center, style: CC.Topic_Heading));}}

class Intro_Head_Contain extends StatelessWidget {Intro_Head_Contain({this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(14),child: Row(children: [Expanded(child: child)]));}}

class Intro_Body extends StatelessWidget {Intro_Body({@required this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(8),margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1), border: Border.all(color: Colors.lightGreen[200]),
        borderRadius: BorderRadius.all(Radius.circular(20))), child: Row(children: [Expanded(child: child)]));}}

class Intro_Body_Header extends StatelessWidget {Intro_Body_Header({@required this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Container(padding: EdgeInsets.only(bottom: 10),
      height: 62,decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black26))), child: child);}}

class Intro extends StatelessWidget {Intro({@required this.child}); final Widget child; @override
Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(0),margin: const EdgeInsets.all(15),
    decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1), border: Border.all(color: Colors.lightGreen[200]),
      borderRadius: BorderRadius.all(Radius.circular(10))), child: Scrollbar(child: child));}}

class Img_Con extends StatelessWidget {Img_Con({@required this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(10),margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1), border: Border.all(color: Color.fromRGBO(200, 200, 200, 1),),
        borderRadius: BorderRadius.all(Radius.circular(12)),), child: Center(child: child));}}

class ClassBlockStyle extends StatelessWidget {ClassBlockStyle({this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(8),margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1),border: Border.all(color:Colors.lightGreen[200]),borderRadius: BorderRadius.all(Radius.circular(10)),),
      child: Row(children: [Expanded(child: child)]));}}

class ClassBlockStyle_2 extends StatelessWidget {ClassBlockStyle_2({this.child}); final Widget child; @override
Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(5),margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1),border: Border.all(color:Colors.black38),borderRadius: BorderRadius.all(Radius.circular(10)),),
    child: Row(children: [Expanded(child: child)]));}}

class Child_Aid extends StatelessWidget {Child_Aid({@required this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Row(
      children: [IconButton(icon: Icon(Icons.swap_vertical_circle_rounded,color: Colors.yellow[700],size: 32.0)),
        Expanded(child: Container(padding: const EdgeInsets.all(14),margin: const EdgeInsets.only(top: 8, left: 0, bottom: 8, right: 9),
            decoration: BoxDecoration(color: Colors.amber[50], border: Border.all(color: Colors.lightGreen[200]),
              borderRadius: BorderRadius.all(Radius.circular(14))), child: child))]);}}

class Intro_content_header extends StatelessWidget {Intro_content_header({@required this.child}); final Widget child; @override
Widget build(BuildContext context) {return Container(padding: const EdgeInsets.all(17),margin: const EdgeInsets.all(6),
    decoration: BoxDecoration(color: Color.fromRGBO(245, 245, 240, 1), border: Border.all(color: Colors.lightGreen[200]),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Column(crossAxisAlignment:CrossAxisAlignment.start, children: [Container(padding: const EdgeInsets.only(bottom: 5), child: child)]));}}

class Description extends StatelessWidget {Description ({this.child}); final Widget child; @override
Widget build(BuildContext context) {return Intro_content_header(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [Container(padding: const EdgeInsets.only(
        bottom: 5), child: Text('Description :', style: CC.SubHead_Bold),), child]));}}

class Requirements extends StatelessWidget {Requirements ({this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Intro_content_header(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [Container(padding: const EdgeInsets.only(
          bottom: 5), child: Text('Requirements :', style: CC.SubHead_Bold),), child]));}}

class Objective extends StatelessWidget {Objective ({this.child}); final Widget child; @override
Widget build(BuildContext context) {return Intro_content_header(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [Container(padding: const EdgeInsets.only(
        bottom: 5), child: Text('Objective :', style: CC.SubHead_Bold),), child]));}}

class Exercise extends StatelessWidget {Exercise ({this.child}); final Widget child; @override
Widget build(BuildContext context) {return Intro_content_header(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [Container(padding: const EdgeInsets.only(
        bottom: 5), child: Text('Exercise :', style: CC.SubHead_Bold),), child]));}}

class Top_List extends StatelessWidget {Top_List({@required this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Container(margin: const EdgeInsets.only(top: 4, bottom: 8, left: 22, right: 4),
      decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1),
          border: Border.all(color: Colors.purple[400]),borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [BoxShadow(color: Color(0x80000000), blurRadius: 30.0, offset: Offset(0.0, 5.0))],
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
              colors: [Color.fromRGBO(230, 230, 230, 1), Colors.white])), child: child);}}

class Subj_List extends StatelessWidget {Subj_List({@required this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Card(color: Colors.blueGrey[200],
      elevation: 1,child: Container(decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1),
            border: Border.all(color: Color.fromRGBO(180, 180, 180, 1)),borderRadius: BorderRadius.all(Radius.circular(14)),
            boxShadow: [BoxShadow(color: Color(0x80000000), blurRadius: 30.0,offset: Offset(0.0, 5.0))],
            gradient: LinearGradient(begin: Alignment.topLeft,
              end: Alignment.bottomRight,colors: [Color.fromRGBO(230, 230, 230, 1),Colors.white])),child: child));}}

Widget Top_Trailer = Icon(Icons.label_important_outline_rounded, size: 30, color: Colors.purple[300]);

Widget Subj_Trailer = Icon(Icons.arrow_forward);

Widget Drop_down = Icon(Icons.archive_rounded, size: 30, color: Colors.purple[300]);

class Top_Lead extends StatelessWidget {Top_Lead({this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Stack(alignment: Alignment.center,children: <Widget>[
        Icon(Icons.all_out_rounded, size: 50, color: Colors.purple[200]),
        child]);}}

Widget Intro_Header = Container(padding: const EdgeInsets.all(6), decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
  child: Center(child: Text('Course Outline / Topics', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1,
        color: Colors.black54, fontStyle: FontStyle.italic))));

Widget Tabs_1 = Container(color: Colors.indigo[100], height: 20, child: TabBar(
    indicatorWeight: 0,indicator: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.deepPurple[400]),tabs: [
      TabIntro(),   TabStudy(), TabTest()]));

Widget Tabs_2 = Container(color: Colors.indigo[100], height: 20, child: TabBar(
    indicatorWeight: 0,indicator: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.deepPurple[400]), tabs: [
      TabIntro(),   TabStudy(),   TabStudy(),   TabTest()]));

Widget Recom_Math = Container(margin: const EdgeInsets.only(top:5),child: Text('Mathematics', style: CC.video_recom_txt_1));

class Recom_Cont extends StatelessWidget {Recom_Cont({this.child}); final Widget child; @override
  Widget build(BuildContext context) {return Card(margin: const EdgeInsets.only(left:12, right:12),
      color: Colors.purple[300],elevation: 6, child: child);}}

Widget Menu_box_head = Container(decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)), color: Colors.blueGrey[100]),height: 15);

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {Navigator.of(context).pop();},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Topic Description"),
    content: Text('In this lesson, We will learn about what gadgets are, We will also know about the examples and the basic classification and uses of common gadgets.',
            softWrap: true),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog_2(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("back"),
    onPressed: () {Navigator.of(context).pop();},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(contentPadding : const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
    title: Text(
      'Select a Class',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black45,
      ),
    ),
    content: Container(
      height: 215,
      child: Scrollbar(
        child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              leading: arrow_icon,
              title: new Text('PRE-NURSERY 1'),
              onTap: () {
                Blank(context);
              },
            ),
            ListTile(
              leading: arrow_icon,
              title: new Text('PRE-NURSERY 2'),
              onTap: () {
                Blank(context);
              },
            ),
            ListTile(
              leading: arrow_icon,
              title: new Text('PRE-NURSERY 1'),
              onTap: () {
                Blank(context);
              },
            ),
            ListTile(
              leading: arrow_icon,
              title: new Text('PRE-NURSERY 2'),
              onTap: () {
                Blank(context);
              },
            ),
            ListTile(
              leading: arrow_icon,
              title: new Text('PRE-NURSERY 1'),
              onTap: () {
                Blank(context);
              },
            ),
            ListTile(
              leading: arrow_icon,
              title: new Text('PRE-NURSERY 2'),
              onTap: () {
                Blank(context);
              },
            ),
        ]).toList(),
        ),
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}