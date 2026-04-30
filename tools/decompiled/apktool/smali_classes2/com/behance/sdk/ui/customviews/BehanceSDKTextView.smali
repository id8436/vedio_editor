.class public Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "BehanceSDKTextView.java"


# static fields
.field private static final FONT_STYLE_ATTR_NAME:Ljava/lang/String; = "fontStyle"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p2, :cond_0

    .line 45
    const-string/jumbo v0, "http://schemas.android.com/apk/com.behance.sdk"

    const-string/jumbo v1, "fontStyle"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    invoke-static {p1, p0, v0}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setAdobeCleanFont(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40
    return-void
.end method
