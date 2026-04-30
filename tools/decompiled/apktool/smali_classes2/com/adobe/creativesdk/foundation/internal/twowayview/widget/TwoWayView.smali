.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;
.super Landroid/support/v7/widget/RecyclerView;
.source "TwoWayView.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "TwoWayView"

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final sConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->sConstructorSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->sConstructorArgs:[Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_TwoWayView:[I

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_TwoWayView_adobe_csdk_twowayview_layoutManager:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-direct {p0, p1, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->loadLayoutManagerFromName(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method private loadLayoutManagerFromName(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 63
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.adobe.creativesdk.foundation.internal.twowayview.widget."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->sConstructorSignature:[Ljava/lang/Class;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->sConstructorArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 77
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->sConstructorArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 79
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->sConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 84
    return-void

    .line 65
    :cond_1
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not load TwoWayLayoutManager from class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    .line 108
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    .line 113
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    .line 98
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .prologue
    .line 88
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TwoWayView can only use TwoWayLayoutManager subclasses as its layout manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    return-void
.end method

.method public setOrientation(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    .line 103
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setOrientation(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V

    .line 104
    return-void
.end method
