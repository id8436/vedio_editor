.class public final enum Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;
.super Ljava/lang/Enum;
.source "BehanceSDKProjectEditorTextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

.field public static final enum CAPTION:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

.field public static final enum MAIN_TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

.field public static final enum SUB_TITLE:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

.field public static final enum TITLE:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;


# instance fields
.field private final style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    const-string/jumbo v1, "MAIN_TEXT"

    const-string/jumbo v2, "main-text"

    invoke-direct {v0, v1, v3, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->MAIN_TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 12
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    const-string/jumbo v1, "TITLE"

    const-string/jumbo v2, "title"

    invoke-direct {v0, v1, v4, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->TITLE:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 13
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    const-string/jumbo v1, "SUB_TITLE"

    const-string/jumbo v2, "sub-title"

    invoke-direct {v0, v1, v5, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->SUB_TITLE:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 14
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    const-string/jumbo v1, "CAPTION"

    const-string/jumbo v2, "caption"

    invoke-direct {v0, v1, v6, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->CAPTION:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->MAIN_TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->TITLE:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->SUB_TITLE:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->CAPTION:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->style:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 43
    iget-object v4, v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->style:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    :goto_1
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    return-object v0
.end method


# virtual methods
.method public getDisplayStringResource()I
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle$1;->$SwitchMap$com$behance$sdk$enums$BehanceSDKProjectEditorTextStyle:[I

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->style:Ljava/lang/String;

    invoke-static {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 29
    :pswitch_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_style_paragraph:I

    goto :goto_0

    .line 31
    :pswitch_1
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_style_header:I

    goto :goto_0

    .line 33
    :pswitch_2
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_style_subheader:I

    goto :goto_0

    .line 35
    :pswitch_3
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_style_caption:I

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->style:Ljava/lang/String;

    return-object v0
.end method
