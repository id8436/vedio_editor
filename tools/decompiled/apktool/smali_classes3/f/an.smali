.class final Lf/an;
.super Lf/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/z",
        "<",
        "Ld/aq;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lf/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lf/an;

    invoke-direct {v0}, Lf/an;-><init>()V

    sput-object v0, Lf/an;->a:Lf/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lf/z;-><init>()V

    .line 298
    return-void
.end method


# virtual methods
.method a(Lf/at;Ld/aq;)V
    .locals 0
    .param p2    # Ld/aq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    invoke-virtual {p1, p2}, Lf/at;->a(Ld/aq;)V

    .line 305
    :cond_0
    return-void
.end method

.method bridge synthetic a(Lf/at;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    check-cast p2, Ld/aq;

    invoke-virtual {p0, p1, p2}, Lf/an;->a(Lf/at;Ld/aq;)V

    return-void
.end method
