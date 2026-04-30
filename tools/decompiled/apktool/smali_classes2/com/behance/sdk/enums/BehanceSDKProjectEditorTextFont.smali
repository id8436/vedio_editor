.class public final enum Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
.super Ljava/lang/Enum;
.source "BehanceSDKProjectEditorTextFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field public static final enum ARIAL:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field public static final enum GEORGIA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field public static final enum HELVETICA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field public static final enum TAHOMA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field public static final enum TIMES:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field public static final enum VERDANA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;


# instance fields
.field private final font:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    const-string/jumbo v1, "HELVETICA"

    const-string/jumbo v2, "helvetica"

    invoke-direct {v0, v1, v4, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->HELVETICA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 12
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    const-string/jumbo v1, "ARIAL"

    const-string/jumbo v2, "arial"

    invoke-direct {v0, v1, v5, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->ARIAL:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 13
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    const-string/jumbo v1, "TIMES"

    const-string/jumbo v2, "times"

    invoke-direct {v0, v1, v6, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->TIMES:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 14
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    const-string/jumbo v1, "VERDANA"

    const-string/jumbo v2, "verdana"

    invoke-direct {v0, v1, v7, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->VERDANA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 15
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    const-string/jumbo v1, "TAHOMA"

    const-string/jumbo v2, "tahoma"

    invoke-direct {v0, v1, v8, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->TAHOMA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 16
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    const-string/jumbo v1, "GEORGIA"

    const/4 v2, 0x5

    const-string/jumbo v3, "georgia, serif"

    invoke-direct {v0, v1, v2, v3}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->GEORGIA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->HELVETICA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->ARIAL:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->TIMES:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    aput-object v1, v0, v6

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->VERDANA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    aput-object v1, v0, v7

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->TAHOMA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->GEORGIA:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    aput-object v2, v0, v1

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->font:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 49
    iget-object v4, v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->font:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    :goto_1
    return-object v0

    .line 48
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fromPartialName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 62
    iget-object v4, v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->font:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    :goto_1
    return-object v0

    .line 61
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    return-object v0
.end method


# virtual methods
.method public getDisplayStringResource()I
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont$1;->$SwitchMap$com$behance$sdk$enums$BehanceSDKProjectEditorTextFont:[I

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->font:Ljava/lang/String;

    invoke-static {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 31
    :pswitch_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_font_helvetica:I

    goto :goto_0

    .line 33
    :pswitch_1
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_font_arial:I

    goto :goto_0

    .line 35
    :pswitch_2
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_font_times_new_roman:I

    goto :goto_0

    .line 37
    :pswitch_3
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_font_verdana:I

    goto :goto_0

    .line 39
    :pswitch_4
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_font_tahoma:I

    goto :goto_0

    .line 41
    :pswitch_5
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_font_georgia:I

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->font:Ljava/lang/String;

    return-object v0
.end method
