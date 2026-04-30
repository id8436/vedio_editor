.class public Lcom/behance/sdk/network/BehanceNameValuePair;
.super Ljava/lang/Object;
.source "BehanceNameValuePair.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceNameValuePair;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/behance/sdk/network/BehanceNameValuePair;->value:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceNameValuePair;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceNameValuePair;->value:Ljava/lang/String;

    .line 31
    return-void
.end method
