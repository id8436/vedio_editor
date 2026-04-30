.class public Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;
.super Landroid/content/ContextWrapper;
.source "ContextWrapperEdgeEffect.java"


# instance fields
.field private mColor:I

.field private mEdgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mGlowDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourcesEdgeEffect:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 31
    iput p2, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mColor:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;-><init>(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mResourcesEdgeEffect:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mColor:I

    return v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mResourcesEdgeEffect:Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    return-object v0
.end method

.method public setEdgeEffectColor(I)V
    .locals 2

    .prologue
    .line 37
    iput p1, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mColor:I

    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    :cond_1
    return-void
.end method
