.class Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;
.super Landroid/content/res/Resources;
.source "ContextWrapperEdgeEffect.java"


# instance fields
.field private overscroll_edge:I

.field private overscroll_glow:I

.field final synthetic this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    .line 53
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 48
    const-string/jumbo v0, "bsdk_overscroll_edge"

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->getPlatformDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    .line 49
    const-string/jumbo v0, "bsdk_overscroll_glow"

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->getPlatformDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    .line 54
    return-void
.end method

.method private getPlatformDrawableId(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$drawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v0, "ContextWrapperEdgeEffec"

    const-string/jumbo v2, "Cannot find internal resource class"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    const-string/jumbo v0, "ContextWrapperEdgeEffec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Internal resource id does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :catch_2
    move-exception v0

    .line 67
    const-string/jumbo v0, "ContextWrapperEdgeEffec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot access internal resource id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :catch_3
    move-exception v0

    .line 70
    const-string/jumbo v0, "ContextWrapperEdgeEffec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot access internal resource id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 72
    goto :goto_0
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    .line 78
    iget v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_overscroll_edge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->access$002(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->access$000(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    :goto_0
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-static {v1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->access$200(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    :cond_0
    :goto_1
    return-object v0

    .line 81
    :cond_1
    iget v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    if-ne p1, v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_overscroll_glow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->access$102(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->access$100(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
