import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final QuillController _quillController;

  @override
  void initState() {
    super.initState();
    _quillController = QuillController.basic();
  }

  @override
  void dispose() {
    _quillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
             
        QuillSimpleToolbar(
          controller: _quillController,
          config: const QuillSimpleToolbarConfig(),
        ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: QuillEditor.basic(
                controller: _quillController,
               config: const QuillEditorConfig(),
                
              ),
            ),
          ),
        
      
          
          
        ],
      ),
    );
  }
}
