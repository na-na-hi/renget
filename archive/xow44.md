```diff
diff --git a/javascript/continuous.js b/javascript/continuous.js
new file mode 100644
index 0000000..32c9d42
--- /dev/null
+++ b/javascript/continuous.js
@@ -0,0 +1,38 @@
+// Monitors the gallery and push generate button when the leading image is new.
+
+let clastHeadImg = null;
+
+function isVisible(id) {
+    return gradioApp().querySelector(id).offsetParent !== null;
+}
+
+onUiUpdate(function(){
+
+    let mode = '';
+
+    if (isVisible('#txt2img_continuous input')) {
+        mode = 'txt2img';
+    } else if (isVisible('#img2img_continuous input')) {
+        mode = 'img2img';
+    } else {
+        return;
+    }
+
+    const galleryPreviews = gradioApp().querySelectorAll('img.h-full.w-full.overflow-hidden');
+
+    if (galleryPreviews == null) return;
+
+    const headImg = galleryPreviews[mode == 'txt2img' ? 0 : galleryPreviews.length - 1]?.src;
+
+    if (headImg == null || headImg == clastHeadImg) return;
+
+    clastHeadImg = headImg;
+
+    if (gradioApp().querySelector(`#${mode}_continuous input`).checked == false) return;
+
+    // click generate button
+    gradioApp().querySelector(`#${mode}_generate`)?.click();
+});
diff --git a/modules/ui.py b/modules/ui.py
index 2231a8e..7244ec6 100644
--- a/modules/ui.py
+++ b/modules/ui.py
@@ -463,8 +463,11 @@ def create_toprow(is_img2img):
                     deepbooru = None
                 prompt_style_apply = gr.Button('Apply style', elem_id="style_apply")
                 save_style = gr.Button('Create style', elem_id="style_create")
+            
+            with gr.Row(scale=1):
+                continuous = gr.Checkbox(label='Enable continuous generation', elem_id=f"{id_part}_continuous", value=False)
 
-    return prompt, roll, prompt_style, negative_prompt, prompt_style2, submit, interrogate, deepbooru, prompt_style_apply, save_style, paste, token_counter, token_button
+    return prompt, roll, prompt_style, negative_prompt, prompt_style2, submit, interrogate, deepbooru, prompt_style_apply, save_style, paste, token_counter, token_button, continuous
 
 
 def setup_progressbar(progressbar, preview, id_part, textinfo=None):
@@ -493,7 +496,7 @@ def create_ui(wrap_gradio_gpu_call):
     import modules.txt2img
 
     with gr.Blocks(analytics_enabled=False) as txt2img_interface:
-        txt2img_prompt, roll, txt2img_prompt_style, txt2img_negative_prompt, txt2img_prompt_style2, submit, _, _, txt2img_prompt_style_apply, txt2img_save_style, paste, token_counter, token_button = create_toprow(is_img2img=False)
+        txt2img_prompt, roll, txt2img_prompt_style, txt2img_negative_prompt, txt2img_prompt_style2, submit, _, _, txt2img_prompt_style_apply, txt2img_save_style, paste, token_counter, token_button, continuous = create_toprow(is_img2img=False)
         dummy_component = gr.Label(visible=False)
 
         with gr.Row(elem_id='txt2img_progress_row'):
@@ -653,7 +656,7 @@ def create_ui(wrap_gradio_gpu_call):
             token_button.click(fn=update_token_counter, inputs=[txt2img_prompt, steps], outputs=[token_counter])
 
     with gr.Blocks(analytics_enabled=False) as img2img_interface:
-        img2img_prompt, roll, img2img_prompt_style, img2img_negative_prompt, img2img_prompt_style2, submit, img2img_interrogate, img2img_deepbooru, img2img_prompt_style_apply, img2img_save_style, paste, token_counter, token_button = create_toprow(is_img2img=True)
+        img2img_prompt, roll, img2img_prompt_style, img2img_negative_prompt, img2img_prompt_style2, submit, img2img_interrogate, img2img_deepbooru, img2img_prompt_style_apply, img2img_save_style, paste, token_counter, token_button, continuous = create_toprow(is_img2img=True)
 
         with gr.Row(elem_id='img2img_progress_row'):
             with gr.Column(scale=1):
```
