.class public interface abstract Lcom/b/a/d/c/f;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lcom/b/a/d/c/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/b/a/d/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/b/a/d/c/g;

    invoke-direct {v0}, Lcom/b/a/d/c/g;-><init>()V

    sput-object v0, Lcom/b/a/d/c/f;->a:Lcom/b/a/d/c/f;

    .line 29
    new-instance v0, Lcom/b/a/d/c/n;

    invoke-direct {v0}, Lcom/b/a/d/c/n;-><init>()V

    invoke-virtual {v0}, Lcom/b/a/d/c/n;->a()Lcom/b/a/d/c/m;

    move-result-object v0

    sput-object v0, Lcom/b/a/d/c/f;->b:Lcom/b/a/d/c/f;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
