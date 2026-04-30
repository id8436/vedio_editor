.class Lf/ax;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lf/aw;

.field private final c:Lf/ap;


# direct methods
.method constructor <init>(Lf/aw;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lf/ax;->b:Lf/aw;

    iput-object p2, p0, Lf/ax;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lf/ap;->a()Lf/ap;

    move-result-object v0

    iput-object v0, p0, Lf/ax;->c:Lf/ap;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lf/ax;->c:Lf/ap;

    invoke-virtual {v0, p2}, Lf/ap;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lf/ax;->c:Lf/ap;

    iget-object v1, p0, Lf/ax;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lf/ap;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lf/ax;->b:Lf/aw;

    .line 147
    invoke-virtual {v0, p2}, Lf/aw;->a(Ljava/lang/reflect/Method;)Lf/az;

    move-result-object v0

    .line 148
    new-instance v1, Lf/u;

    invoke-direct {v1, v0, p3}, Lf/u;-><init>(Lf/az;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, v0, Lf/az;->d:Lf/h;

    invoke-interface {v0, v1}, Lf/h;->a(Lf/g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
