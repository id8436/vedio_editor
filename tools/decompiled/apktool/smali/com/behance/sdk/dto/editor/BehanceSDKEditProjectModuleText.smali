.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;
.source "BehanceSDKEditProjectModuleText.java"


# instance fields
.field private html:Ljava/lang/String;

.field private textAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public getTextAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->textAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->html:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTextAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->textAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 28
    return-void
.end method
