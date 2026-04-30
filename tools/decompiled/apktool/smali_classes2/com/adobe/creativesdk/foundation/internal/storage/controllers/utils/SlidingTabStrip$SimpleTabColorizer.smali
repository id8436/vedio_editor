.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SlidingTabStrip.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;


# instance fields
.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$1;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndicatorColor(I)I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs setIndicatorColors([I)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    .line 173
    return-void
.end method
