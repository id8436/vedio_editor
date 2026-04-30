.class public Lcom/learnncode/mediachooser/fragment/a;
.super Landroid/app/Fragment;
.source "BucketImageFragment.java"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private e:Landroid/view/View;

.field private f:Landroid/widget/GridView;

.field private g:Lcom/learnncode/mediachooser/a/a;

.field private h:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/learnncode/mediachooser/fragment/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/learnncode/mediachooser/fragment/a;->a:I

    .line 45
    iput v1, p0, Lcom/learnncode/mediachooser/fragment/a;->b:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/learnncode/mediachooser/fragment/a;->c:I

    .line 62
    invoke-virtual {p0, v1}, Lcom/learnncode/mediachooser/fragment/a;->setRetainInstance(Z)V

    .line 63
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string/jumbo v0, "datetaken"

    .line 84
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/learnncode/mediachooser/fragment/a;->d:[Ljava/lang/String;

    const-string/jumbo v5, "datetaken DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/learnncode/mediachooser/a;

    iget-object v2, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    const/4 v3, 0x0

    .line 89
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    const/4 v4, 0x1

    .line 90
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/learnncode/mediachooser/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    throw v0

    .line 97
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 98
    new-instance v1, Lcom/learnncode/mediachooser/a/a;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/learnncode/mediachooser/a/a;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iput-object v1, p0, Lcom/learnncode/mediachooser/fragment/a;->g:Lcom/learnncode/mediachooser/a/a;

    .line 99
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->f:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/a;->g:Lcom/learnncode/mediachooser/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/learnncode/mediachooser/fragment/b;

    invoke-direct {v1, p0}, Lcom/learnncode/mediachooser/fragment/b;-><init>(Lcom/learnncode/mediachooser/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    return-void

    .line 101
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/learnncode/mediachooser/l;->no_media_file_available:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 69
    sget v0, Lcom/learnncode/mediachooser/k;->view_grid_bucket_layout_media_chooser:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->e:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->e:Landroid/view/View;

    sget v1, Lcom/learnncode/mediachooser/j;->gridViewFromMediaChooser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->f:Landroid/widget/GridView;

    .line 71
    invoke-direct {p0}, Lcom/learnncode/mediachooser/fragment/a;->a()V

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->e:Landroid/view/View;

    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/a;->g:Lcom/learnncode/mediachooser/a/a;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/learnncode/mediachooser/l;->no_media_file_available:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
