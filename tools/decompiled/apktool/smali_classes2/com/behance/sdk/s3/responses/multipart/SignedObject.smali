.class public Lcom/behance/sdk/s3/responses/multipart/SignedObject;
.super Ljava/lang/Object;
.source "SignedObject.java"


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/behance/sdk/s3/responses/multipart/SignedObject;->key:Ljava/lang/String;

    return-object v0
.end method
