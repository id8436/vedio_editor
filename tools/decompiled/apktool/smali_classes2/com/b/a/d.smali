.class public Lcom/b/a/d;
.super Lcom/b/a/c;
.source "DrawableTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/c",
        "<TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/b/a/q;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Landroid/content/Context;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;Lcom/b/a/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/b/a/h;",
            "Lcom/b/a/e/q;",
            "Lcom/b/a/e/i;",
            "Lcom/b/a/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    const-class v3, Lcom/b/a/d/d/e/a;

    const-class v4, Lcom/b/a/d/d/b/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/b/a/d;->a(Lcom/b/a/h;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)Lcom/b/a/g/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/b/a/g/f;Lcom/b/a/h;Lcom/b/a/e/q;Lcom/b/a/e/i;)V

    .line 61
    iput-object p2, p0, Lcom/b/a/d;->g:Lcom/b/a/d/c/s;

    .line 62
    iput-object p3, p0, Lcom/b/a/d;->h:Lcom/b/a/d/c/s;

    .line 63
    iput-object p8, p0, Lcom/b/a/d;->i:Lcom/b/a/q;

    .line 64
    return-void
.end method

.method private static a(Lcom/b/a/h;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)Lcom/b/a/g/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/h;",
            "Lcom/b/a/d/c/s",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/b/a/d/c/s",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;)",
            "Lcom/b/a/g/e",
            "<TA;",
            "Lcom/b/a/d/c/j;",
            "TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    if-nez p5, :cond_1

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/d/d/f/c;

    move-result-object p5

    .line 47
    :cond_1
    const-class v0, Lcom/b/a/d/c/j;

    invoke-virtual {p0, v0, p3}, Lcom/b/a/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/g/b;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/b/a/d/c/h;

    invoke-direct {v2, p1, p2}, Lcom/b/a/d/c/h;-><init>(Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;)V

    .line 51
    new-instance v0, Lcom/b/a/g/e;

    invoke-direct {v0, v2, p5, v1}, Lcom/b/a/g/e;-><init>(Lcom/b/a/d/c/s;Lcom/b/a/d/d/f/c;Lcom/b/a/g/b;)V

    goto :goto_0
.end method


# virtual methods
.method public h()Lcom/b/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/b",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/b/a/d;->i:Lcom/b/a/q;

    new-instance v1, Lcom/b/a/b;

    iget-object v2, p0, Lcom/b/a/d;->g:Lcom/b/a/d/c/s;

    iget-object v3, p0, Lcom/b/a/d;->h:Lcom/b/a/d/c/s;

    iget-object v4, p0, Lcom/b/a/d;->i:Lcom/b/a/q;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/b/a/b;-><init>(Lcom/b/a/e;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Lcom/b/a/q;)V

    invoke-virtual {v0, v1}, Lcom/b/a/q;->a(Lcom/b/a/e;)Lcom/b/a/e;

    move-result-object v0

    check-cast v0, Lcom/b/a/b;

    return-object v0
.end method
