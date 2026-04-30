.class public Lcom/behance/sdk/ui/customviews/BehanceSDKButton;
.super Landroid/widget/Button;
.source "BehanceSDKButton.java"


# static fields
.field private static final FONT_STYLE_ATTR_NAME:Ljava/lang/String; = "fontStyle"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p2, :cond_0

    .line 43
    const-string/jumbo v0, "http://schemas.android.com/apk/com.behance.sdk"

    const-string/jumbo v1, "fontStyle"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    invoke-static {p1, p0, v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setAdobeCleanFont(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 38
    return-void
.end method
