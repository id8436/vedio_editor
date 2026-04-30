package d;

import java.io.IOException;

/* JADX INFO: compiled from: Callback.java */
/* JADX INFO: loaded from: classes3.dex */
public interface i {
    void onFailure(g gVar, IOException iOException);

    void onResponse(g gVar, bd bdVar) throws IOException;
}
