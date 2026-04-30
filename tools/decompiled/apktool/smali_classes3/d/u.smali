.class public interface abstract Ld/u;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Ld/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ld/v;

    invoke-direct {v0}, Ld/v;-><init>()V

    sput-object v0, Ld/u;->a:Ld/u;

    return-void
.end method


# virtual methods
.method public abstract a(Ld/ai;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ai;",
            ")",
            "Ljava/util/List",
            "<",
            "Ld/t;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ld/ai;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ai;",
            "Ljava/util/List",
            "<",
            "Ld/t;",
            ">;)V"
        }
    .end annotation
.end method
