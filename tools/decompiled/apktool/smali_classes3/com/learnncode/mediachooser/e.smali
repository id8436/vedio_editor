.class public Lcom/learnncode/mediachooser/e;
.super Ljava/lang/Object;
.source "MediaModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Landroid/net/Uri;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/learnncode/mediachooser/e;->b:Z

    .line 25
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->c:Landroid/net/Uri;

    .line 26
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->d:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/learnncode/mediachooser/e;->b:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/learnncode/mediachooser/e;->b:Z

    .line 25
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->c:Landroid/net/Uri;

    .line 26
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->d:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/learnncode/mediachooser/e;->c:Landroid/net/Uri;

    .line 37
    iput-boolean p2, p0, Lcom/learnncode/mediachooser/e;->b:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/learnncode/mediachooser/e;->b:Z

    .line 25
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->c:Landroid/net/Uri;

    .line 26
    iput-object v1, p0, Lcom/learnncode/mediachooser/e;->d:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/learnncode/mediachooser/e;->c:Landroid/net/Uri;

    .line 43
    iput-boolean p2, p0, Lcom/learnncode/mediachooser/e;->b:Z

    .line 44
    iput-object p4, p0, Lcom/learnncode/mediachooser/e;->d:Ljava/lang/String;

    .line 45
    return-void
.end method
