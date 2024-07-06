import 'package:billing_app/Pdf_generator/pdf_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final text = "Text here";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Articles page"),
      ),
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                  "https://imgs.search.brave.com/AZkKYOifhfns8OmMQcTUfP9YTKWXy4N2vwDbbzYEV9U/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9i/L2I2L1BlbmNpbF9k/cmF3aW5nX29mX2Ff/Z2lybF9pbl9lY3N0/YXN5LmpwZw")),
          Text(text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return PdfPreviewPage(text);
          }));
        },
        child: const Icon(Icons.picture_as_pdf_sharp),
      ),
    );
  }
}
