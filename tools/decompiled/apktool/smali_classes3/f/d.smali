.class final Lf/d;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lf/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/k",
        "<",
        "Ld/bf;",
        "Ld/bf;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lf/d;

    invoke-direct {v0}, Lf/d;-><init>()V

    sput-object v0, Lf/d;->a:Lf/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/bf;)Ld/bf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    check-cast p1, Ld/bf;

    invoke-virtual {p0, p1}, Lf/d;->a(Ld/bf;)Ld/bf;

    move-result-object v0

    return-object v0
.end method
