.class public Lcom/learnncode/mediachooser/a;
.super Ljava/lang/Object;
.source "BucketEntry.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/learnncode/mediachooser/a;->c:Ljava/lang/String;

    .line 26
    iput p1, p0, Lcom/learnncode/mediachooser/a;->b:I

    .line 27
    invoke-static {p2}, Lcom/learnncode/mediachooser/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/a;->a:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/learnncode/mediachooser/a;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 44
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    instance-of v1, p1, Lcom/learnncode/mediachooser/a;

    if-nez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    check-cast p1, Lcom/learnncode/mediachooser/a;

    .line 40
    iget v1, p0, Lcom/learnncode/mediachooser/a;->b:I

    iget v2, p1, Lcom/learnncode/mediachooser/a;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/learnncode/mediachooser/a;->b:I

    return v0
.end method
