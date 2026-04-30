package android.support.v4.content;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesCompat {

    public final class EditorCompat {
        private static EditorCompat sInstance;
        private final Helper mHelper = new Helper();

        class Helper {
            Helper() {
            }

            public void apply(@NonNull SharedPreferences.Editor editor) {
                try {
                    editor.apply();
                } catch (AbstractMethodError e2) {
                    editor.commit();
                }
            }
        }

        private EditorCompat() {
        }

        public static EditorCompat getInstance() {
            if (sInstance == null) {
                sInstance = new EditorCompat();
            }
            return sInstance;
        }

        public void apply(@NonNull SharedPreferences.Editor editor) {
            this.mHelper.apply(editor);
        }
    }

    private SharedPreferencesCompat() {
    }
}
