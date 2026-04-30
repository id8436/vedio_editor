.class public Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKEditText;
.super Landroid/widget/EditText;
.source "CreativeSDKEditText.java"


# static fields
.field private static _csdkadobeCleanFont:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKEditText;->_csdkadobeCleanFont:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 39
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 47
    invoke-super {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    return-void
.end method
