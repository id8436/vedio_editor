.class public interface abstract Ld/a/f/a;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final a:Ld/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ld/a/f/b;

    invoke-direct {v0}, Ld/a/f/b;-><init>()V

    sput-object v0, Ld/a/f/a;->a:Ld/a/f/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Z
.end method

.method public abstract c(Ljava/io/File;)J
.end method
