package com.a.a.a.i.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.gdata.data.analytics.Metric;

/* JADX INFO: compiled from: DbOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final g f534a = new g("insertionOrder", Metric.Type.INTEGER, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final g f535b = new g("_id", "text", 1, null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final g f536c = new g("priority", Metric.Type.INTEGER, 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final g f537d = new g("group_id", "text", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final g f538e = new g("run_count", Metric.Type.INTEGER, 4);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final g f539f = new g("created_ns", "long", 5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final g f540g = new g("delay_until_ns", "long", 6);
    static final g h = new g("running_session_id", "long", 7);
    static final g i = new g("network_type", Metric.Type.INTEGER, 8);
    static final g j = new g("deadline", Metric.Type.INTEGER, 9);
    static final g k = new g("cancel_on_deadline", Metric.Type.INTEGER, 10);
    static final g l = new g("cancelled", Metric.Type.INTEGER, 11);
    static final g m = new g("_id", Metric.Type.INTEGER, 0);
    static final g n = new g("job_id", "text", 1, new d("job_holder", f535b.f556a));
    static final g o = new g("tag_name", "text", 2);

    public a(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 12);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(c.a("job_holder", f534a, f535b, f536c, f537d, f538e, f539f, f540g, h, i, j, k, l));
        sQLiteDatabase.execSQL(c.a("job_holder_tags", m, n, o));
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS TAG_NAME_INDEX ON job_holder_tags(" + o.f556a + ")");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 == 11) {
            a(sQLiteDatabase);
            return;
        }
        sQLiteDatabase.execSQL(c.a("job_holder"));
        sQLiteDatabase.execSQL(c.a("job_holder_tags"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS TAG_NAME_INDEX");
        onCreate(sQLiteDatabase);
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE job_holder ADD COLUMN " + l.f556a + " " + l.f557b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        onUpgrade(sQLiteDatabase, i2, i3);
    }
}
