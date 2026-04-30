.class public Lcom/b/a/d/c/a/f;
.super Lcom/b/a/d/c/w;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lcom/b/a/d/c/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/c/w",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/b/a/d/c/a/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/b/a/d/c/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/s",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/b/a/d/c/w;-><init>(Lcom/b/a/d/c/s;)V

    .line 41
    return-void
.end method
