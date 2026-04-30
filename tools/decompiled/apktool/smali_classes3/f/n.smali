.class Lf/n;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lf/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/h",
        "<",
        "Ljava/lang/Object;",
        "Lf/g",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lf/m;


# direct methods
.method constructor <init>(Lf/m;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lf/n;->b:Lf/m;

    iput-object p2, p0, Lf/n;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lf/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lf/n;->b(Lf/g;)Lf/g;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lf/n;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lf/g;)Lf/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lf/g",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    return-object p1
.end method
