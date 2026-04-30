.class synthetic Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory$1;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldCategory.java"


# static fields
.field static final synthetic $SwitchMap$com$behance$sdk$enums$BehanceSDKCreativeFieldCategory:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->values()[Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory$1;->$SwitchMap$com$behance$sdk$enums$BehanceSDKCreativeFieldCategory:[I

    :try_start_0
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory$1;->$SwitchMap$com$behance$sdk$enums$BehanceSDKCreativeFieldCategory:[I

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->POPULAR:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
