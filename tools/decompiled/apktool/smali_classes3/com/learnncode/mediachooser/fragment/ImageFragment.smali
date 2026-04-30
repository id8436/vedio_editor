.class public Lcom/learnncode/mediachooser/fragment/ImageFragment;
.super Landroid/app/Fragment;
.source "ImageFragment.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/learnncode/mediachooser/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/GridView;

.field private d:Landroid/view/View;

.field private e:Lcom/learnncode/mediachooser/fragment/f;

.field private f:Lcom/learnncode/mediachooser/a/b;

.field private g:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->setRetainInstance(Z)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/fragment/ImageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b:Ljava/util/ArrayList;

    move v0, v1

    .line 135
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 136
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 137
    const-string/jumbo v2, "_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 138
    const-string/jumbo v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 139
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b:Ljava/util/ArrayList;

    new-instance v5, Lcom/learnncode/mediachooser/e;

    invoke-direct {v5, v2, v1, v3}, Lcom/learnncode/mediachooser/e;-><init>(Ljava/lang/String;ZLandroid/net/Uri;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/learnncode/mediachooser/a/b;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->f:Lcom/learnncode/mediachooser/a/b;

    .line 146
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->f:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/learnncode/mediachooser/fragment/e;

    invoke-direct {v1, p0}, Lcom/learnncode/mediachooser/fragment/e;-><init>(Lcom/learnncode/mediachooser/fragment/ImageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/learnncode/mediachooser/l;->no_media_file_available:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/learnncode/mediachooser/fragment/ImageFragment;)Lcom/learnncode/mediachooser/fragment/f;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->e:Lcom/learnncode/mediachooser/fragment/f;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 118
    :try_start_0
    const-string/jumbo v0, "datetaken"

    .line 119
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    .line 120
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->g:Landroid/database/Cursor;

    .line 122
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->g:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 104
    :try_start_0
    const-string/jumbo v0, "datetaken"

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    .line 108
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->g:Landroid/database/Cursor;

    .line 110
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->g:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
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
    .line 222
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->f:Lcom/learnncode/mediachooser/a/b;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/learnncode/mediachooser/e;

    invoke-direct {v0, p1, v2}, Lcom/learnncode/mediachooser/e;-><init>(Ljava/lang/String;Z)V

    .line 228
    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->f:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/a/b;->notifyDataSetChanged()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/learnncode/mediachooser/fragment/f;

    move-object v1, v0

    iput-object v1, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->e:Lcom/learnncode/mediachooser/fragment/f;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement OnImageSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->d:Landroid/view/View;

    if-nez v0, :cond_2

    .line 80
    sget v0, Lcom/learnncode/mediachooser/k;->view_grid_layout_media_chooser:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->d:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->d:Landroid/view/View;

    sget v1, Lcom/learnncode/mediachooser/j;->gridViewFromMediaChooser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->c:Landroid/widget/GridView;

    .line 85
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->d:Landroid/view/View;

    return-object v0

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->b()V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->f:Lcom/learnncode/mediachooser/a/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/ImageFragment;->f:Lcom/learnncode/mediachooser/a/b;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/a/b;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/learnncode/mediachooser/l;->no_media_file_available:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
