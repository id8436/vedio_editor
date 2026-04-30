.class final Lf/f;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lf/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    sput-object v0, Lf/f;->a:Lf/f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    check-cast p1, Ld/bf;

    invoke-virtual {p0, p1}, Lf/f;->a(Ld/bf;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Ld/bf;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Ld/bf;->close()V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
