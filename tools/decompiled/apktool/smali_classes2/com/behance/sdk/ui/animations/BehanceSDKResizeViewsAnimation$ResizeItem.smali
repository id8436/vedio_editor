.class Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;
.super Ljava/lang/Object;
.source "BehanceSDKResizeViewsAnimation.java"


# instance fields
.field private fadeBase:F

.field private fadeBy:F

.field private mStartWidth:I

.field private mView:Landroid/view/View;

.field private mWidth:I

.field final synthetic this$0:Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;


# direct methods
.method private constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;Landroid/view/View;IFF)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->mView:Landroid/view/View;

    .line 52
    iput p3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->mWidth:I

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->mStartWidth:I

    .line 54
    iput p4, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->fadeBase:F

    .line 55
    iput p5, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->fadeBy:F

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;Landroid/view/View;IFFLcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;Landroid/view/View;IFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->mStartWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->fadeBase:F

    return v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->fadeBy:F

    return v0
.end method
