.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;
.super Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
.source "BehanceSDKProjectModuleEmbedDTO.java"


# static fields
.field private static final serialVersionUID:J = 0x7291216e59c482c0L


# instance fields
.field private captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field private captionFormattedText:Ljava/lang/String;

.field private captionPlainText:Ljava/lang/String;

.field private embedHTML:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;-><init>()V

    .line 40
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->setType(Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public getCaptionFormattedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->captionFormattedText:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptionPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->captionPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbedHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->embedHTML:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptionAlignment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 72
    return-void
.end method

.method public setCaptionFormattedText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "<div"

    const-string/jumbo v1, "<div class=\"caption\">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->captionFormattedText:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCaptionPlainText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->captionPlainText:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setEmbedHTML(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->embedHTML:Ljava/lang/String;

    .line 48
    return-void
.end method
