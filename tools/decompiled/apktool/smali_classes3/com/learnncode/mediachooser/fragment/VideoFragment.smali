.class public Lcom/learnncode/mediachooser/fragment/VideoFragment;
.super Landroid/app/Fragment;
.source "VideoFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/learnncode/mediachooser/a/b;

.field private c:Landroid/widget/GridView;

.field private d:Landroid/database/Cursor;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/learnncode/mediachooser/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Lcom/learnncode/mediachooser/fragment/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->h:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->setRetainInstance(Z)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Lcom/learnncode/mediachooser/fragment/i;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->k:Lcom/learnncode/mediachooser/fragment/i;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 123
    :try_start_0
    const-string/jumbo v0, "datetaken"

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    .line 127
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    .line 128
    invoke-direct {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 153
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 155
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    invoke-virtual {v7, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 157
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 158
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 159
    const-string/jumbo v0, ":%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 162
    const-string/jumbo v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v6

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    const-string/jumbo v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 172
    if-lez v2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    const-string/jumbo v3, "_data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->e:I

    .line 174
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    const-string/jumbo v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->f:I

    .line 175
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    const-string/jumbo v3, "duration"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->g:I

    .line 178
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->i:Ljava/util/ArrayList;

    move v0, v1

    .line 181
    :goto_0
    if-ge v0, v2, :cond_0

    .line 182
    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 183
    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    iget v4, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->e:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    iget v7, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->f:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 186
    iget-object v5, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    iget v6, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->g:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-direct {p0, v5}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    iget-object v6, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->i:Ljava/util/ArrayList;

    new-instance v7, Lcom/learnncode/mediachooser/e;

    invoke-direct {v7, v3, v1, v4, v5}, Lcom/learnncode/mediachooser/e;-><init>(Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->i:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/learnncode/mediachooser/a/b;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    .line 193
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    iput-object p0, v0, Lcom/learnncode/mediachooser/a/b;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    .line 194
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/learnncode/mediachooser/fragment/g;

    invoke-direct {v1, p0}, Lcom/learnncode/mediachooser/fragment/g;-><init>(Lcom/learnncode/mediachooser/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/learnncode/mediachooser/fragment/h;

    invoke-direct {v1, p0}, Lcom/learnncode/mediachooser/fragment/h;-><init>(Lcom/learnncode/mediachooser/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/learnncode/mediachooser/l;->no_media_file_available:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 137
    :try_start_0
    const-string/jumbo v0, "datetaken"

    .line 140
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    .line 142
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->d:Landroid/database/Cursor;

    .line 143
    invoke-direct {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Lcom/learnncode/mediachooser/e;

    invoke-direct {v0, p1, v2}, Lcom/learnncode/mediachooser/e;-><init>(Ljava/lang/String;Z)V

    .line 269
    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/a/b;->notifyDataSetChanged()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a()V

    goto :goto_0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/learnncode/mediachooser/fragment/i;

    move-object v1, v0

    iput-object v1, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->k:Lcom/learnncode/mediachooser/fragment/i;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement OnVideoSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->j:Landroid/view/View;

    if-nez v0, :cond_2

    .line 99
    sget v0, Lcom/learnncode/mediachooser/k;->view_grid_layout_media_chooser:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->j:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->j:Landroid/view/View;

    sget v1, Lcom/learnncode/mediachooser/j;->gridViewFromMediaChooser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c:Landroid/widget/GridView;

    .line 103
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->j:Landroid/view/View;

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/a/b;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/learnncode/mediachooser/l;->no_media_file_available:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->c:Landroid/widget/GridView;

    if-ne p1, v0, :cond_0

    .line 301
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/a/b;->notifyDataSetChanged()V

    goto :goto_0
.end method
