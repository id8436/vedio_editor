.class final Lf/a;
.super Lf/l;
.source "BuiltInConverters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lf/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lf/aw;",
            ")",
            "Lf/k",
            "<",
            "Ld/bf;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Ld/bf;

    if-ne p1, v0, :cond_1

    .line 30
    const-class v0, Lf/b/w;

    invoke-static {p2, v0}, Lf/bb;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lf/d;->a:Lf/d;

    .line 37
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lf/b;->a:Lf/b;

    goto :goto_0

    .line 34
    :cond_1
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    .line 35
    sget-object v0, Lf/f;->a:Lf/f;

    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lf/aw;",
            ")",
            "Lf/k",
            "<*",
            "Ld/az;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Ld/az;

    invoke-static {p1}, Lf/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lf/c;->a:Lf/c;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
