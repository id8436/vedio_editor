.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetMessageRecipientsTaskParams.java"


# instance fields
.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->query:Ljava/lang/String;

    return-object v0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->query:Ljava/lang/String;

    .line 17
    return-void
.end method
