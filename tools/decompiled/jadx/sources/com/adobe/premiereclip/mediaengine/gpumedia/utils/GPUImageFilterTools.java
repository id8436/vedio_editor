package com.adobe.premiereclip.mediaengine.gpumedia.utils;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMedia3x3ConvolutionFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMedia3x3TextureSamplingFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaAddBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaAlphaBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBoxBlurFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBrightnessFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBulgeDistortionFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaCGAColorspaceFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaChromaKeyBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaColorBalanceFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaColorBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaColorBurnBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaColorDodgeBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaColorInvertFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaContrastFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaCrosshatchFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaDarkenBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaDifferenceBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaDilationFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaDirectionalSobelEdgeDetectionFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaDissolveBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaDivideBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaEmbossFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaExclusionBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaExposureFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFalseColorFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilterGroup;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaGammaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaGaussianBlurFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaGlassSphereFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaGrayscaleFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaHardLightBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaHazeFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaHighlightShadowFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaHueBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaHueFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaKuwaharaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaLaplacianFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaLevelsFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaLightenBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaLinearBurnBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaLookupFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaLuminosityBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaMonochromeFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaMultiplyBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaNonMaximumSuppressionFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaNormalBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaOpacityFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaOverlayBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaPixelationFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaPosterizeFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaRGBDilationFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaRGBFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSaturationBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSaturationFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaScreenBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSepiaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSharpenFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSketchFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSmoothToonFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSobelEdgeDetection;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSoftLightBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSourceOverBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSphereRefractionFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSubtractBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaSwirlFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaToneCurveFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaToonFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoInputFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaVignetteFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaWeakPixelInclusionFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaWhiteBalanceFilter;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GPUImageFilterTools {

    enum FilterType {
        CONTRAST,
        GRAYSCALE,
        SHARPEN,
        SEPIA,
        SOBEL_EDGE_DETECTION,
        THREE_X_THREE_CONVOLUTION,
        FILTER_GROUP,
        EMBOSS,
        POSTERIZE,
        GAMMA,
        BRIGHTNESS,
        INVERT,
        HUE,
        PIXELATION,
        SATURATION,
        EXPOSURE,
        HIGHLIGHT_SHADOW,
        MONOCHROME,
        OPACITY,
        RGB,
        WHITE_BALANCE,
        VIGNETTE,
        TONE_CURVE,
        BLEND_COLOR_BURN,
        BLEND_COLOR_DODGE,
        BLEND_DARKEN,
        BLEND_DIFFERENCE,
        BLEND_DISSOLVE,
        BLEND_EXCLUSION,
        BLEND_SOURCE_OVER,
        BLEND_HARD_LIGHT,
        BLEND_LIGHTEN,
        BLEND_ADD,
        BLEND_DIVIDE,
        BLEND_MULTIPLY,
        BLEND_OVERLAY,
        BLEND_SCREEN,
        BLEND_ALPHA,
        BLEND_COLOR,
        BLEND_HUE,
        BLEND_SATURATION,
        BLEND_LUMINOSITY,
        BLEND_LINEAR_BURN,
        BLEND_SOFT_LIGHT,
        BLEND_SUBTRACT,
        BLEND_CHROMA_KEY,
        BLEND_NORMAL,
        LOOKUP_AMATORKA,
        GAUSSIAN_BLUR,
        CROSSHATCH,
        BOX_BLUR,
        CGA_COLORSPACE,
        DILATION,
        KUWAHARA,
        RGB_DILATION,
        SKETCH,
        TOON,
        SMOOTH_TOON,
        BULGE_DISTORTION,
        GLASS_SPHERE,
        HAZE,
        LAPLACIAN,
        NON_MAXIMUM_SUPPRESSION,
        SPHERE_REFRACTION,
        SWIRL,
        WEAK_PIXEL_INCLUSION,
        FALSE_COLOR,
        COLOR_BALANCE,
        LEVELS_FILTER_MIN
    }

    public interface OnGpuImageFilterChosenListener {
        void onGpuImageFilterChosenListener(GPUMediaFilter gPUMediaFilter);
    }

    public static void showDialog(final Context context, final OnGpuImageFilterChosenListener onGpuImageFilterChosenListener) {
        final FilterList filterList = new FilterList();
        filterList.addFilter("Contrast", FilterType.CONTRAST);
        filterList.addFilter("Invert", FilterType.INVERT);
        filterList.addFilter("Pixelation", FilterType.PIXELATION);
        filterList.addFilter("Hue", FilterType.HUE);
        filterList.addFilter("Gamma", FilterType.GAMMA);
        filterList.addFilter("Brightness", FilterType.BRIGHTNESS);
        filterList.addFilter("Sepia", FilterType.SEPIA);
        filterList.addFilter("Grayscale", FilterType.GRAYSCALE);
        filterList.addFilter("Sharpness", FilterType.SHARPEN);
        filterList.addFilter("Sobel Edge Detection", FilterType.SOBEL_EDGE_DETECTION);
        filterList.addFilter("3x3 Convolution", FilterType.THREE_X_THREE_CONVOLUTION);
        filterList.addFilter("Emboss", FilterType.EMBOSS);
        filterList.addFilter("Posterize", FilterType.POSTERIZE);
        filterList.addFilter("Grouped filters", FilterType.FILTER_GROUP);
        filterList.addFilter("Saturation", FilterType.SATURATION);
        filterList.addFilter("Exposure", FilterType.EXPOSURE);
        filterList.addFilter("Highlight Shadow", FilterType.HIGHLIGHT_SHADOW);
        filterList.addFilter("Monochrome", FilterType.MONOCHROME);
        filterList.addFilter("Opacity", FilterType.OPACITY);
        filterList.addFilter("RGB", FilterType.RGB);
        filterList.addFilter("White Balance", FilterType.WHITE_BALANCE);
        filterList.addFilter("Vignette", FilterType.VIGNETTE);
        filterList.addFilter("ToneCurve", FilterType.TONE_CURVE);
        filterList.addFilter("Blend (Difference)", FilterType.BLEND_DIFFERENCE);
        filterList.addFilter("Blend (Source Over)", FilterType.BLEND_SOURCE_OVER);
        filterList.addFilter("Blend (Color Burn)", FilterType.BLEND_COLOR_BURN);
        filterList.addFilter("Blend (Color Dodge)", FilterType.BLEND_COLOR_DODGE);
        filterList.addFilter("Blend (Darken)", FilterType.BLEND_DARKEN);
        filterList.addFilter("Blend (Dissolve)", FilterType.BLEND_DISSOLVE);
        filterList.addFilter("Blend (Exclusion)", FilterType.BLEND_EXCLUSION);
        filterList.addFilter("Blend (Hard Light)", FilterType.BLEND_HARD_LIGHT);
        filterList.addFilter("Blend (Lighten)", FilterType.BLEND_LIGHTEN);
        filterList.addFilter("Blend (Add)", FilterType.BLEND_ADD);
        filterList.addFilter("Blend (Divide)", FilterType.BLEND_DIVIDE);
        filterList.addFilter("Blend (Multiply)", FilterType.BLEND_MULTIPLY);
        filterList.addFilter("Blend (Overlay)", FilterType.BLEND_OVERLAY);
        filterList.addFilter("Blend (Screen)", FilterType.BLEND_SCREEN);
        filterList.addFilter("Blend (Alpha)", FilterType.BLEND_ALPHA);
        filterList.addFilter("Blend (Color)", FilterType.BLEND_COLOR);
        filterList.addFilter("Blend (Hue)", FilterType.BLEND_HUE);
        filterList.addFilter("Blend (Saturation)", FilterType.BLEND_SATURATION);
        filterList.addFilter("Blend (Luminosity)", FilterType.BLEND_LUMINOSITY);
        filterList.addFilter("Blend (Linear Burn)", FilterType.BLEND_LINEAR_BURN);
        filterList.addFilter("Blend (Soft Light)", FilterType.BLEND_SOFT_LIGHT);
        filterList.addFilter("Blend (Subtract)", FilterType.BLEND_SUBTRACT);
        filterList.addFilter("Blend (Chroma Key)", FilterType.BLEND_CHROMA_KEY);
        filterList.addFilter("Blend (Normal)", FilterType.BLEND_NORMAL);
        filterList.addFilter("Lookup (Amatorka)", FilterType.LOOKUP_AMATORKA);
        filterList.addFilter("Gaussian Blur", FilterType.GAUSSIAN_BLUR);
        filterList.addFilter("Crosshatch", FilterType.CROSSHATCH);
        filterList.addFilter("Box Blur", FilterType.BOX_BLUR);
        filterList.addFilter("CGA Color Space", FilterType.CGA_COLORSPACE);
        filterList.addFilter("Dilation", FilterType.DILATION);
        filterList.addFilter("Kuwahara", FilterType.KUWAHARA);
        filterList.addFilter("RGB Dilation", FilterType.RGB_DILATION);
        filterList.addFilter("Sketch", FilterType.SKETCH);
        filterList.addFilter("Toon", FilterType.TOON);
        filterList.addFilter("Smooth Toon", FilterType.SMOOTH_TOON);
        filterList.addFilter("Bulge Distortion", FilterType.BULGE_DISTORTION);
        filterList.addFilter("Glass Sphere", FilterType.GLASS_SPHERE);
        filterList.addFilter("Haze", FilterType.HAZE);
        filterList.addFilter("Laplacian", FilterType.LAPLACIAN);
        filterList.addFilter("Non Maximum Suppression", FilterType.NON_MAXIMUM_SUPPRESSION);
        filterList.addFilter("Sphere Refraction", FilterType.SPHERE_REFRACTION);
        filterList.addFilter("Swirl", FilterType.SWIRL);
        filterList.addFilter("Weak Pixel Inclusion", FilterType.WEAK_PIXEL_INCLUSION);
        filterList.addFilter("False Color", FilterType.FALSE_COLOR);
        filterList.addFilter("Color Balance", FilterType.COLOR_BALANCE);
        filterList.addFilter("Levels Min (Mid Adjust)", FilterType.LEVELS_FILTER_MIN);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle("Choose a filter");
        builder.setItems((CharSequence[]) filterList.names.toArray(new String[filterList.names.size()]), new DialogInterface.OnClickListener() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                onGpuImageFilterChosenListener.onGpuImageFilterChosenListener(GPUImageFilterTools.createFilterForType(context, filterList.filters.get(i)));
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GPUMediaFilter createFilterForType(Context context, FilterType filterType) {
        switch (filterType) {
            case CONTRAST:
                return new GPUMediaContrastFilter(2.0f);
            case GAMMA:
                return new GPUMediaGammaFilter(2.0f);
            case INVERT:
                return new GPUMediaColorInvertFilter();
            case PIXELATION:
                return new GPUMediaPixelationFilter();
            case HUE:
                return new GPUMediaHueFilter(90.0f);
            case BRIGHTNESS:
                return new GPUMediaBrightnessFilter(1.5f);
            case GRAYSCALE:
                return new GPUMediaGrayscaleFilter();
            case SEPIA:
                return new GPUMediaSepiaFilter();
            case SHARPEN:
                GPUMediaSharpenFilter gPUMediaSharpenFilter = new GPUMediaSharpenFilter();
                gPUMediaSharpenFilter.setSharpness(2.0f);
                return gPUMediaSharpenFilter;
            case SOBEL_EDGE_DETECTION:
                return new GPUMediaSobelEdgeDetection();
            case THREE_X_THREE_CONVOLUTION:
                GPUMedia3x3ConvolutionFilter gPUMedia3x3ConvolutionFilter = new GPUMedia3x3ConvolutionFilter();
                gPUMedia3x3ConvolutionFilter.setConvolutionKernel(new float[]{-1.0f, 0.0f, 1.0f, -2.0f, 0.0f, 2.0f, -1.0f, 0.0f, 1.0f});
                return gPUMedia3x3ConvolutionFilter;
            case EMBOSS:
                return new GPUMediaEmbossFilter();
            case POSTERIZE:
                return new GPUMediaPosterizeFilter();
            case FILTER_GROUP:
                LinkedList linkedList = new LinkedList();
                linkedList.add(new GPUMediaContrastFilter());
                linkedList.add(new GPUMediaDirectionalSobelEdgeDetectionFilter());
                linkedList.add(new GPUMediaGrayscaleFilter());
                return new GPUMediaFilterGroup(linkedList);
            case SATURATION:
                return new GPUMediaSaturationFilter(1.0f);
            case EXPOSURE:
                return new GPUMediaExposureFilter(0.0f);
            case HIGHLIGHT_SHADOW:
                return new GPUMediaHighlightShadowFilter(0.0f, 1.0f);
            case MONOCHROME:
                return new GPUMediaMonochromeFilter(1.0f, new float[]{0.6f, 0.45f, 0.3f, 1.0f});
            case OPACITY:
                return new GPUMediaOpacityFilter(1.0f);
            case RGB:
                return new GPUMediaRGBFilter(1.0f, 1.0f, 1.0f);
            case WHITE_BALANCE:
                return new GPUMediaWhiteBalanceFilter(5000.0f, 0.0f);
            case VIGNETTE:
                PointF pointF = new PointF();
                pointF.x = 0.5f;
                pointF.y = 0.5f;
                return new GPUMediaVignetteFilter(pointF, new float[]{0.0f, 0.0f, 0.0f}, 0.3f, 0.75f);
            case TONE_CURVE:
                return new GPUMediaToneCurveFilter();
            case BLEND_DIFFERENCE:
                return createBlendFilter(context, GPUMediaDifferenceBlendFilter.class);
            case BLEND_SOURCE_OVER:
                return createBlendFilter(context, GPUMediaSourceOverBlendFilter.class);
            case BLEND_COLOR_BURN:
                return createBlendFilter(context, GPUMediaColorBurnBlendFilter.class);
            case BLEND_COLOR_DODGE:
                return createBlendFilter(context, GPUMediaColorDodgeBlendFilter.class);
            case BLEND_DARKEN:
                return createBlendFilter(context, GPUMediaDarkenBlendFilter.class);
            case BLEND_DISSOLVE:
                return createBlendFilter(context, GPUMediaDissolveBlendFilter.class);
            case BLEND_EXCLUSION:
                return createBlendFilter(context, GPUMediaExclusionBlendFilter.class);
            case BLEND_HARD_LIGHT:
                return createBlendFilter(context, GPUMediaHardLightBlendFilter.class);
            case BLEND_LIGHTEN:
                return createBlendFilter(context, GPUMediaLightenBlendFilter.class);
            case BLEND_ADD:
                return createBlendFilter(context, GPUMediaAddBlendFilter.class);
            case BLEND_DIVIDE:
                return createBlendFilter(context, GPUMediaDivideBlendFilter.class);
            case BLEND_MULTIPLY:
                return createBlendFilter(context, GPUMediaMultiplyBlendFilter.class);
            case BLEND_OVERLAY:
                return createBlendFilter(context, GPUMediaOverlayBlendFilter.class);
            case BLEND_SCREEN:
                return createBlendFilter(context, GPUMediaScreenBlendFilter.class);
            case BLEND_ALPHA:
                return createBlendFilter(context, GPUMediaAlphaBlendFilter.class);
            case BLEND_COLOR:
                return createBlendFilter(context, GPUMediaColorBlendFilter.class);
            case BLEND_HUE:
                return createBlendFilter(context, GPUMediaHueBlendFilter.class);
            case BLEND_SATURATION:
                return createBlendFilter(context, GPUMediaSaturationBlendFilter.class);
            case BLEND_LUMINOSITY:
                return createBlendFilter(context, GPUMediaLuminosityBlendFilter.class);
            case BLEND_LINEAR_BURN:
                return createBlendFilter(context, GPUMediaLinearBurnBlendFilter.class);
            case BLEND_SOFT_LIGHT:
                return createBlendFilter(context, GPUMediaSoftLightBlendFilter.class);
            case BLEND_SUBTRACT:
                return createBlendFilter(context, GPUMediaSubtractBlendFilter.class);
            case BLEND_CHROMA_KEY:
                return createBlendFilter(context, GPUMediaChromaKeyBlendFilter.class);
            case BLEND_NORMAL:
                return createBlendFilter(context, GPUMediaNormalBlendFilter.class);
            case LOOKUP_AMATORKA:
                return new GPUMediaLookupFilter();
            case GAUSSIAN_BLUR:
                return new GPUMediaGaussianBlurFilter();
            case CROSSHATCH:
                return new GPUMediaCrosshatchFilter();
            case BOX_BLUR:
                return new GPUMediaBoxBlurFilter();
            case CGA_COLORSPACE:
                return new GPUMediaCGAColorspaceFilter();
            case DILATION:
                return new GPUMediaDilationFilter();
            case KUWAHARA:
                return new GPUMediaKuwaharaFilter();
            case RGB_DILATION:
                return new GPUMediaRGBDilationFilter();
            case SKETCH:
                return new GPUMediaSketchFilter();
            case TOON:
                return new GPUMediaToonFilter();
            case SMOOTH_TOON:
                return new GPUMediaSmoothToonFilter();
            case BULGE_DISTORTION:
                return new GPUMediaBulgeDistortionFilter();
            case GLASS_SPHERE:
                return new GPUMediaGlassSphereFilter();
            case HAZE:
                return new GPUMediaHazeFilter();
            case LAPLACIAN:
                return new GPUMediaLaplacianFilter();
            case NON_MAXIMUM_SUPPRESSION:
                return new GPUMediaNonMaximumSuppressionFilter();
            case SPHERE_REFRACTION:
                return new GPUMediaSphereRefractionFilter();
            case SWIRL:
                return new GPUMediaSwirlFilter();
            case WEAK_PIXEL_INCLUSION:
                return new GPUMediaWeakPixelInclusionFilter();
            case FALSE_COLOR:
                return new GPUMediaFalseColorFilter();
            case COLOR_BALANCE:
                return new GPUMediaColorBalanceFilter();
            case LEVELS_FILTER_MIN:
                GPUMediaLevelsFilter gPUMediaLevelsFilter = new GPUMediaLevelsFilter();
                gPUMediaLevelsFilter.setMin(0.0f, 3.0f, 1.0f);
                return gPUMediaLevelsFilter;
            default:
                throw new IllegalStateException("No filter of that type!");
        }
    }

    private static GPUMediaFilter createBlendFilter(Context context, Class<? extends GPUMediaTwoInputFilter> cls) {
        try {
            return cls.newInstance();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    class FilterList {
        public List<FilterType> filters;
        public List<String> names;

        private FilterList() {
            this.names = new LinkedList();
            this.filters = new LinkedList();
        }

        public void addFilter(String str, FilterType filterType) {
            this.names.add(str);
            this.filters.add(filterType);
        }
    }

    public class FilterAdjuster {
        private final Adjuster<? extends GPUMediaFilter> adjuster;

        public FilterAdjuster(GPUMediaFilter gPUMediaFilter) {
            if (gPUMediaFilter instanceof GPUMediaSharpenFilter) {
                this.adjuster = new SharpnessAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaSepiaFilter) {
                this.adjuster = new SepiaAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaContrastFilter) {
                this.adjuster = new ContrastAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaGammaFilter) {
                this.adjuster = new GammaAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaBrightnessFilter) {
                this.adjuster = new BrightnessAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaSobelEdgeDetection) {
                this.adjuster = new SobelAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaEmbossFilter) {
                this.adjuster = new EmbossAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMedia3x3TextureSamplingFilter) {
                this.adjuster = new GPU3x3TextureAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaHueFilter) {
                this.adjuster = new HueAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaPosterizeFilter) {
                this.adjuster = new PosterizeAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaPixelationFilter) {
                this.adjuster = new PixelationAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaSaturationFilter) {
                this.adjuster = new SaturationAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaExposureFilter) {
                this.adjuster = new ExposureAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaHighlightShadowFilter) {
                this.adjuster = new HighlightShadowAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaMonochromeFilter) {
                this.adjuster = new MonochromeAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaOpacityFilter) {
                this.adjuster = new OpacityAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaRGBFilter) {
                this.adjuster = new RGBAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaWhiteBalanceFilter) {
                this.adjuster = new WhiteBalanceAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaVignetteFilter) {
                this.adjuster = new VignetteAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaDissolveBlendFilter) {
                this.adjuster = new DissolveBlendAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaGaussianBlurFilter) {
                this.adjuster = new GaussianBlurAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaCrosshatchFilter) {
                this.adjuster = new CrosshatchBlurAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaBulgeDistortionFilter) {
                this.adjuster = new BulgeDistortionAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaGlassSphereFilter) {
                this.adjuster = new GlassSphereAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaHazeFilter) {
                this.adjuster = new HazeAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaSphereRefractionFilter) {
                this.adjuster = new SphereRefractionAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaSwirlFilter) {
                this.adjuster = new SwirlAdjuster().filter(gPUMediaFilter);
                return;
            }
            if (gPUMediaFilter instanceof GPUMediaColorBalanceFilter) {
                this.adjuster = new ColorBalanceAdjuster().filter(gPUMediaFilter);
            } else if (gPUMediaFilter instanceof GPUMediaLevelsFilter) {
                this.adjuster = new LevelsMinMidAdjuster().filter(gPUMediaFilter);
            } else {
                this.adjuster = null;
            }
        }

        public boolean canAdjust() {
            return this.adjuster != null;
        }

        public void adjust(int i) {
            if (this.adjuster != null) {
                this.adjuster.adjust(i);
            }
        }

        abstract class Adjuster<T extends GPUMediaFilter> {
            private T filter;

            public abstract void adjust(int i);

            private Adjuster() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Adjuster<T> filter(GPUMediaFilter gPUMediaFilter) {
                this.filter = gPUMediaFilter;
                return this;
            }

            public T getFilter() {
                return this.filter;
            }

            protected float range(int i, float f2, float f3) {
                return (((f3 - f2) * i) / 100.0f) + f2;
            }

            protected int range(int i, int i2, int i3) {
                return (((i3 - i2) * i) / 100) + i2;
            }
        }

        class SharpnessAdjuster extends Adjuster<GPUMediaSharpenFilter> {
            private SharpnessAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setSharpness(range(i, -4.0f, 4.0f));
            }
        }

        class PixelationAdjuster extends Adjuster<GPUMediaPixelationFilter> {
            private PixelationAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setPixel(range(i, 1.0f, 100.0f));
            }
        }

        class HueAdjuster extends Adjuster<GPUMediaHueFilter> {
            private HueAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setHue(range(i, 0.0f, 360.0f));
            }
        }

        class ContrastAdjuster extends Adjuster<GPUMediaContrastFilter> {
            private ContrastAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setContrast(range(i, 0.0f, 2.0f));
            }
        }

        class GammaAdjuster extends Adjuster<GPUMediaGammaFilter> {
            private GammaAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setGamma(range(i, 0.0f, 3.0f));
            }
        }

        class BrightnessAdjuster extends Adjuster<GPUMediaBrightnessFilter> {
            private BrightnessAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setBrightness(range(i, -1.0f, 1.0f));
            }
        }

        class SepiaAdjuster extends Adjuster<GPUMediaSepiaFilter> {
            private SepiaAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setIntensity(range(i, 0.0f, 2.0f));
            }
        }

        class SobelAdjuster extends Adjuster<GPUMediaSobelEdgeDetection> {
            private SobelAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setLineSize(range(i, 0.0f, 5.0f));
            }
        }

        class EmbossAdjuster extends Adjuster<GPUMediaEmbossFilter> {
            private EmbossAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setIntensity(range(i, 0.0f, 4.0f));
            }
        }

        class PosterizeAdjuster extends Adjuster<GPUMediaPosterizeFilter> {
            private PosterizeAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setColorLevels(range(i, 1, 50));
            }
        }

        class GPU3x3TextureAdjuster extends Adjuster<GPUMedia3x3TextureSamplingFilter> {
            private GPU3x3TextureAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setLineSize(range(i, 0.0f, 5.0f));
            }
        }

        class SaturationAdjuster extends Adjuster<GPUMediaSaturationFilter> {
            private SaturationAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setSaturation(range(i, 0.0f, 2.0f));
            }
        }

        class ExposureAdjuster extends Adjuster<GPUMediaExposureFilter> {
            private ExposureAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setExposure(range(i, -10.0f, 10.0f));
            }
        }

        class HighlightShadowAdjuster extends Adjuster<GPUMediaHighlightShadowFilter> {
            private HighlightShadowAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setShadows(range(i, 0.0f, 1.0f));
                getFilter().setHighlights(range(i, 0.0f, 1.0f));
            }
        }

        class MonochromeAdjuster extends Adjuster<GPUMediaMonochromeFilter> {
            private MonochromeAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setIntensity(range(i, 0.0f, 1.0f));
            }
        }

        class OpacityAdjuster extends Adjuster<GPUMediaOpacityFilter> {
            private OpacityAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setOpacity(range(i, 0.0f, 1.0f));
            }
        }

        class RGBAdjuster extends Adjuster<GPUMediaRGBFilter> {
            private RGBAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setRed(range(i, 0.0f, 1.0f));
            }
        }

        class WhiteBalanceAdjuster extends Adjuster<GPUMediaWhiteBalanceFilter> {
            private WhiteBalanceAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setTemperature(range(i, 2000.0f, 8000.0f));
            }
        }

        class VignetteAdjuster extends Adjuster<GPUMediaVignetteFilter> {
            private VignetteAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setVignetteStart(range(i, 0.0f, 1.0f));
            }
        }

        class DissolveBlendAdjuster extends Adjuster<GPUMediaDissolveBlendFilter> {
            private DissolveBlendAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setMix(range(i, 0.0f, 1.0f));
            }
        }

        class GaussianBlurAdjuster extends Adjuster<GPUMediaGaussianBlurFilter> {
            private GaussianBlurAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setBlurSize(range(i, 0.0f, 1.0f));
            }
        }

        class CrosshatchBlurAdjuster extends Adjuster<GPUMediaCrosshatchFilter> {
            private CrosshatchBlurAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setCrossHatchSpacing(range(i, 0.0f, 0.06f));
                getFilter().setLineWidth(range(i, 0.0f, 0.006f));
            }
        }

        class BulgeDistortionAdjuster extends Adjuster<GPUMediaBulgeDistortionFilter> {
            private BulgeDistortionAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setRadius(range(i, 0.0f, 1.0f));
                getFilter().setScale(range(i, -1.0f, 1.0f));
            }
        }

        class GlassSphereAdjuster extends Adjuster<GPUMediaGlassSphereFilter> {
            private GlassSphereAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setRadius(range(i, 0.0f, 1.0f));
            }
        }

        class HazeAdjuster extends Adjuster<GPUMediaHazeFilter> {
            private HazeAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setDistance(range(i, -0.3f, 0.3f));
                getFilter().setSlope(range(i, -0.3f, 0.3f));
            }
        }

        class SphereRefractionAdjuster extends Adjuster<GPUMediaSphereRefractionFilter> {
            private SphereRefractionAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setRadius(range(i, 0.0f, 1.0f));
            }
        }

        class SwirlAdjuster extends Adjuster<GPUMediaSwirlFilter> {
            private SwirlAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setAngle(range(i, 0.0f, 2.0f));
            }
        }

        class ColorBalanceAdjuster extends Adjuster<GPUMediaColorBalanceFilter> {
            private ColorBalanceAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setMidtones(new float[]{range(i, 0.0f, 1.0f), range(i / 2, 0.0f, 1.0f), range(i / 3, 0.0f, 1.0f)});
            }
        }

        class LevelsMinMidAdjuster extends Adjuster<GPUMediaLevelsFilter> {
            private LevelsMinMidAdjuster() {
                super();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.utils.GPUImageFilterTools.FilterAdjuster.Adjuster
            public void adjust(int i) {
                getFilter().setMin(0.0f, range(i, 0.0f, 1.0f), 1.0f);
            }
        }
    }
}
