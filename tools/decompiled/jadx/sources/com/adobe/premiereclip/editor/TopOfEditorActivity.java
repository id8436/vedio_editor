package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.adobe.premiereclip.editor.automatic.AutomaticActivity;
import com.adobe.premiereclip.project.ProjectManager;

/* JADX INFO: loaded from: classes2.dex */
public class TopOfEditorActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Intent intent;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("project_key");
        if (bundle != null && stringExtra != null && bundle.getBoolean("go_to_editor", false)) {
            if (ProjectManager.getInstance().getProjectWithKey(stringExtra).getEditMode() == 1) {
                intent = new Intent(this, (Class<?>) AutomaticActivity.class);
            } else {
                intent = new Intent(this, (Class<?>) EditorActivity.class);
            }
            intent.putExtra("project_key", stringExtra);
            intent.putExtra("newProject", false);
            intent.addFlags(67108864);
            startActivity(intent);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("go_to_editor", true);
        super.onSaveInstanceState(bundle);
    }
}
