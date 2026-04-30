.class final Lf/m;
.super Lf/i;
.source "DefaultCallAdapterFactory.java"


# static fields
.field static final a:Lf/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lf/m;

    invoke-direct {v0}, Lf/m;-><init>()V

    sput-object v0, Lf/m;->a:Lf/i;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lf/aw;)Lf/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lf/aw;",
            ")",
            "Lf/h",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lf/m;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lf/g;

    if-eq v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {p1}, Lf/bb;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 36
    new-instance v0, Lf/n;

    invoke-direct {v0, p0, v1}, Lf/n;-><init>(Lf/m;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
