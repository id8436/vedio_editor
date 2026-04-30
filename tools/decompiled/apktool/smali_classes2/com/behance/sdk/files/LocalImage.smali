.class public Lcom/behance/sdk/files/LocalImage;
.super Lcom/behance/sdk/project/modules/ImageModule;
.source "LocalImage.java"


# static fields
.field private static final serialVersionUID:J = 0x5a9bf9eae4857eaeL


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(JLjava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 34
    return-void
.end method
