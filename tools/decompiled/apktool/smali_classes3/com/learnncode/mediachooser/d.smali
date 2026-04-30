.class public Lcom/learnncode/mediachooser/d;
.super Ljava/lang/Object;
.source "MediaChooserConstants.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:I

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:I

.field public static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x1

    .line 32
    const-string/jumbo v0, "learnNcode"

    sput-object v0, Lcom/learnncode/mediachooser/d;->a:Ljava/lang/String;

    .line 37
    const/16 v0, 0x64

    sput v0, Lcom/learnncode/mediachooser/d;->b:I

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/learnncode/mediachooser/d;->c:I

    .line 44
    sput-boolean v1, Lcom/learnncode/mediachooser/d;->d:Z

    .line 45
    sput-boolean v1, Lcom/learnncode/mediachooser/d;->e:Z

    .line 46
    sput-boolean v1, Lcom/learnncode/mediachooser/d;->f:Z

    .line 48
    sput v2, Lcom/learnncode/mediachooser/d;->g:I

    .line 49
    sput v2, Lcom/learnncode/mediachooser/d;->h:I

    return-void
.end method

.method public static a(Ljava/io/File;Z)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x400

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 77
    div-long/2addr v0, v2

    .line 80
    div-long/2addr v0, v2

    .line 83
    if-eqz p1, :cond_1

    .line 84
    sget v2, Lcom/learnncode/mediachooser/d;->h:I

    .line 88
    :goto_0
    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 89
    const-wide/16 v0, 0x0

    .line 91
    :cond_0
    return-wide v0

    .line 86
    :cond_1
    sget v2, Lcom/learnncode/mediachooser/d;->g:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 4

    .prologue
    .line 96
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 98
    sget v0, Lcom/learnncode/mediachooser/l;->please_wait_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 99
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 100
    sget v2, Lcom/learnncode/mediachooser/k;->view_loading_media_chooser:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    return-object v1
.end method
