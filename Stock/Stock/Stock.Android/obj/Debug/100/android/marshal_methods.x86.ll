; ModuleID = 'obj\Debug\100\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\100\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [246 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 58
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 91
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 11
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 86
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 72
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 72
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 39
	i32 166922606, ; 7: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 23
	i32 172012715, ; 8: FastAndroidCamera.dll => 0xa40b4ab => 4
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 73
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 37
	i32 219130465, ; 11: Xamarin.Android.Support.v4 => 0xd0faa61 => 28
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 116
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 53
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 122
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 111
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 42
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 57
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 51
	i32 293936332, ; 19: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x11851ccc => 92
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 29
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 16
	i32 334355562, ; 22: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 99
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 55
	i32 389971796, ; 24: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 24
	i32 393699800, ; 25: Firebase => 0x177761d8 => 5
	i32 437821906, ; 26: Xamarin.GooglePlayServices.SafetyNet => 0x1a18a1d2 => 95
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 41
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 81
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 114
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 50
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 10
	i32 469710990, ; 32: System.dll => 0x1bff388e => 14
	i32 472798695, ; 33: Stock.Android => 0x1c2e55e7 => 0
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 51
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 62
	i32 498788369, ; 36: System.ObjectModel => 0x1dbae811 => 117
	i32 514659665, ; 37: Xamarin.Android.Support.Compat => 0x1ead1551 => 23
	i32 526420162, ; 38: System.Transactions.dll => 0x1f6088c2 => 105
	i32 545304856, ; 39: System.Runtime.Extensions => 0x2080b118 => 115
	i32 589597883, ; 40: Xamarin.GooglePlayServices.Auth.Api.Phone => 0x23248cbb => 92
	i32 605376203, ; 41: System.IO.Compression.FileSystem => 0x24154ecb => 109
	i32 610194910, ; 42: System.Reactive.dll => 0x245ed5de => 18
	i32 627609679, ; 43: Xamarin.AndroidX.CustomView => 0x2568904f => 46
	i32 663517072, ; 44: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 78
	i32 666292255, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 34
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 21
	i32 692692150, ; 47: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 22
	i32 775507847, ; 48: System.IO.Compression => 0x2e394f87 => 108
	i32 809851609, ; 49: System.Drawing.Common.dll => 0x30455ad9 => 107
	i32 843511501, ; 50: Xamarin.AndroidX.Print => 0x3246f6cd => 69
	i32 877678880, ; 51: System.Globalization.dll => 0x34505120 => 122
	i32 882883187, ; 52: Xamarin.Android.Support.v4.dll => 0x349fba73 => 28
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 91
	i32 954320159, ; 54: ZXing.Net.Mobile.Forms => 0x38e1c51f => 99
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 11
	i32 958213972, ; 56: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 27
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 55
	i32 974778368, ; 58: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 992768348, ; 59: System.Collections.dll => 0x3b2c715c => 114
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 71
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 33
	i32 1042160112, ; 62: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 88
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 59
	i32 1098259244, ; 64: System => 0x41761b2c => 14
	i32 1110581358, ; 65: Xamarin.Firebase.Auth => 0x4232206e => 82
	i32 1134191450, ; 66: ZXingNetMobile.dll => 0x439a635a => 101
	i32 1175144683, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 76
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 66
	i32 1204270330, ; 69: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 34
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 77
	i32 1293217323, ; 71: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 48
	i32 1333047053, ; 72: Xamarin.Firebase.Common => 0x4f74af0d => 84
	i32 1364015309, ; 73: System.IO => 0x514d38cd => 120
	i32 1365406463, ; 74: System.ServiceModel.Internals.dll => 0x516272ff => 102
	i32 1376866003, ; 75: Xamarin.AndroidX.SavedState => 0x52114ed3 => 71
	i32 1395857551, ; 76: Xamarin.AndroidX.Media.dll => 0x5333188f => 63
	i32 1406073936, ; 77: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 43
	i32 1411702249, ; 78: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 83
	i32 1445445088, ; 79: Xamarin.Android.Support.Fragment => 0x5627bde0 => 26
	i32 1457743152, ; 80: System.Runtime.Extensions.dll => 0x56e36530 => 115
	i32 1460219004, ; 81: Xamarin.Forms.Xaml => 0x57092c7c => 89
	i32 1462112819, ; 82: System.IO.Compression.dll => 0x57261233 => 108
	i32 1469204771, ; 83: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 32
	i32 1543031311, ; 84: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 121
	i32 1571005899, ; 85: zxing.portable => 0x5da3a5cb => 100
	i32 1574652163, ; 86: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 25
	i32 1582372066, ; 87: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 47
	i32 1592978981, ; 88: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 89: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 61
	i32 1624863272, ; 90: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 80
	i32 1636350590, ; 91: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 45
	i32 1639515021, ; 92: System.Net.Http.dll => 0x61b9038d => 2
	i32 1639986890, ; 93: System.Text.RegularExpressions => 0x61c036ca => 121
	i32 1648197267, ; 94: Stock.dll => 0x623d7e93 => 12
	i32 1657153582, ; 95: System.Runtime => 0x62c6282e => 19
	i32 1658241508, ; 96: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 74
	i32 1658251792, ; 97: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 90
	i32 1670060433, ; 98: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 42
	i32 1701541528, ; 99: System.Diagnostics.Debug.dll => 0x656b7698 => 116
	i32 1729485958, ; 100: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 38
	i32 1766324549, ; 101: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 73
	i32 1776026572, ; 102: System.Core.dll => 0x69dc03cc => 13
	i32 1788241197, ; 103: Xamarin.AndroidX.Fragment => 0x6a96652d => 50
	i32 1808609942, ; 104: Xamarin.AndroidX.Loader => 0x6bcd3296 => 61
	i32 1813201214, ; 105: Xamarin.Google.Android.Material => 0x6c13413e => 90
	i32 1818569960, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 67
	i32 1867746548, ; 107: Xamarin.Essentials.dll => 0x6f538cf4 => 81
	i32 1875053220, ; 108: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 83
	i32 1878053835, ; 109: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 89
	i32 1885316902, ; 110: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 35
	i32 1904184254, ; 111: FastAndroidCamera => 0x717f8bbe => 4
	i32 1904755420, ; 112: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 1
	i32 1908813208, ; 113: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 94
	i32 1919157823, ; 114: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 64
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 59
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 56
	i32 2079903147, ; 117: System.Runtime.dll => 0x7bf8cdab => 19
	i32 2090596640, ; 118: System.Numerics.Vectors => 0x7c9bf920 => 17
	i32 2097448633, ; 119: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 52
	i32 2126786730, ; 120: Xamarin.Forms.Platform.Android => 0x7ec430aa => 87
	i32 2129483829, ; 121: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 93
	i32 2166116741, ; 122: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 25
	i32 2188064486, ; 123: System.Json.dll => 0x826b36e6 => 15
	i32 2193016926, ; 124: System.ObjectModel.dll => 0x82b6c85e => 117
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 76
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 62
	i32 2256548716, ; 128: Xamarin.AndroidX.MultiDex => 0x8680336c => 64
	i32 2261435625, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 54
	i32 2279755925, ; 130: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 70
	i32 2315684594, ; 131: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 30
	i32 2329204181, ; 132: zxing.portable.dll => 0x8ad4d5d5 => 100
	i32 2330457430, ; 133: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 24
	i32 2341995103, ; 134: ZXingNetMobile => 0x8b98025f => 101
	i32 2373288475, ; 135: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 26
	i32 2382033717, ; 136: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 82
	i32 2409053734, ; 137: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 68
	i32 2431243866, ; 138: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 97
	i32 2454642406, ; 139: System.Text.Encoding.dll => 0x924edee6 => 119
	i32 2465532216, ; 140: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 41
	i32 2471841756, ; 141: netstandard.dll => 0x93554fdc => 103
	i32 2475788418, ; 142: Java.Interop.dll => 0x93918882 => 7
	i32 2482213323, ; 143: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 98
	i32 2501346920, ; 144: System.Data.DataSetExtensions => 0x95178668 => 106
	i32 2505896520, ; 145: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 58
	i32 2581819634, ; 146: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 77
	i32 2620871830, ; 147: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 45
	i32 2624644809, ; 148: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 49
	i32 2633051222, ; 149: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 57
	i32 2693849962, ; 150: System.IO.dll => 0xa090e36a => 120
	i32 2701096212, ; 151: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 74
	i32 2715334215, ; 152: System.Threading.Tasks.dll => 0xa1d8b647 => 113
	i32 2732626843, ; 153: Xamarin.AndroidX.Activity => 0xa2e0939b => 29
	i32 2737747696, ; 154: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 32
	i32 2766581644, ; 155: Xamarin.Forms.Core => 0xa4e6af8c => 86
	i32 2778768386, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 79
	i32 2804607052, ; 157: Xamarin.Firebase.Components.dll => 0xa72ae84c => 85
	i32 2810250172, ; 158: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 43
	i32 2819470561, ; 159: System.Xml.dll => 0xa80db4e1 => 20
	i32 2847418871, ; 160: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 93
	i32 2853208004, ; 161: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 79
	i32 2855708567, ; 162: Xamarin.AndroidX.Transition => 0xaa36a797 => 75
	i32 2903344695, ; 163: System.ComponentModel.Composition => 0xad0d8637 => 110
	i32 2905242038, ; 164: mscorlib.dll => 0xad2a79b6 => 10
	i32 2916838712, ; 165: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 80
	i32 2919462931, ; 166: System.Numerics.Vectors.dll => 0xae037813 => 17
	i32 2921128767, ; 167: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 31
	i32 2930337483, ; 168: Stock.Android.dll => 0xaea966cb => 0
	i32 2978675010, ; 169: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 48
	i32 3024354802, ; 170: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 53
	i32 3042805887, ; 171: Stock => 0xb55d887f => 12
	i32 3044182254, ; 172: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 173: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 65
	i32 3058099980, ; 174: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 96
	i32 3066684652, ; 175: Xamarin.GooglePlayServices.SafetyNet.dll => 0xb6c9e4ec => 95
	i32 3071899978, ; 176: Xamarin.Firebase.Common.dll => 0xb719794a => 84
	i32 3075834255, ; 177: System.Threading.Tasks => 0xb755818f => 113
	i32 3092211740, ; 178: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 27
	i32 3111772706, ; 179: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3201217166, ; 180: System.Json => 0xbeceb28e => 15
	i32 3204380047, ; 181: System.Data.dll => 0xbefef58f => 104
	i32 3211777861, ; 182: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 47
	i32 3220365878, ; 183: System.Threading => 0xbff2e236 => 118
	i32 3230466174, ; 184: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 94
	i32 3247949154, ; 185: Mono.Security => 0xc197c562 => 112
	i32 3258312781, ; 186: Xamarin.AndroidX.CardView => 0xc235e84d => 38
	i32 3267021929, ; 187: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 36
	i32 3299363146, ; 188: System.Text.Encoding => 0xc4a8494a => 119
	i32 3317135071, ; 189: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 46
	i32 3317144872, ; 190: System.Data => 0xc5b79d28 => 104
	i32 3322403133, ; 191: Firebase.dll => 0xc607d93d => 5
	i32 3340431453, ; 192: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 35
	i32 3346324047, ; 193: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 66
	i32 3353484488, ; 194: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 52
	i32 3362522851, ; 195: Xamarin.AndroidX.Core => 0xc86c06e3 => 44
	i32 3366347497, ; 196: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 197: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 70
	i32 3404865022, ; 198: System.ServiceModel.Internals => 0xcaf21dfe => 102
	i32 3429136800, ; 199: System.Xml => 0xcc6479a0 => 20
	i32 3430777524, ; 200: netstandard => 0xcc7d82b4 => 103
	i32 3439690031, ; 201: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 22
	i32 3441283291, ; 202: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 49
	i32 3476120550, ; 203: Mono.Android => 0xcf3163e6 => 9
	i32 3486566296, ; 204: System.Transactions => 0xcfd0c798 => 105
	i32 3493954962, ; 205: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 40
	i32 3501239056, ; 206: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 36
	i32 3509114376, ; 207: System.Xml.Linq => 0xd128d608 => 21
	i32 3536029504, ; 208: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 87
	i32 3567349600, ; 209: System.ComponentModel.Composition.dll => 0xd4a16f60 => 110
	i32 3596207933, ; 210: LiteDB.dll => 0xd659c73d => 8
	i32 3618140916, ; 211: Xamarin.AndroidX.Preference => 0xd7a872f4 => 68
	i32 3627220390, ; 212: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 69
	i32 3629588173, ; 213: LiteDB => 0xd8571ecd => 8
	i32 3632359727, ; 214: Xamarin.Forms.Platform => 0xd881692f => 88
	i32 3633644679, ; 215: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 31
	i32 3641597786, ; 216: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 56
	i32 3672681054, ; 217: Mono.Android.dll => 0xdae8aa5e => 9
	i32 3676310014, ; 218: System.Web.Services.dll => 0xdb2009fe => 111
	i32 3682565725, ; 219: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 37
	i32 3684561358, ; 220: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 40
	i32 3684933406, ; 221: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 1
	i32 3689375977, ; 222: System.Drawing.Common => 0xdbe768e9 => 107
	i32 3718780102, ; 223: Xamarin.AndroidX.Annotation => 0xdda814c6 => 30
	i32 3724971120, ; 224: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 65
	i32 3731644420, ; 225: System.Reactive => 0xde6c6004 => 18
	i32 3758932259, ; 226: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 54
	i32 3786282454, ; 227: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 39
	i32 3822602673, ; 228: Xamarin.AndroidX.Media => 0xe3d849b1 => 63
	i32 3829621856, ; 229: System.Numerics.dll => 0xe4436460 => 16
	i32 3847036339, ; 230: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 98
	i32 3885922214, ; 231: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 75
	i32 3896760992, ; 232: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 44
	i32 3920810846, ; 233: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 109
	i32 3921031405, ; 234: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 78
	i32 3931092270, ; 235: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 67
	i32 3945713374, ; 236: System.Data.DataSetExtensions.dll => 0xeb2ecede => 106
	i32 3955647286, ; 237: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 33
	i32 3970018735, ; 238: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 96
	i32 4073602200, ; 239: System.Threading.dll => 0xf2ce3c98 => 118
	i32 4105002889, ; 240: Mono.Security.dll => 0xf4ad5f89 => 112
	i32 4151237749, ; 241: System.Core => 0xf76edc75 => 13
	i32 4182413190, ; 242: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 60
	i32 4186595366, ; 243: ZXing.Net.Mobile.Core => 0xf98a6026 => 97
	i32 4284549794, ; 244: Xamarin.Firebase.Components => 0xff610aa2 => 85
	i32 4292120959 ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 60
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [246 x i32] [
	i32 58, i32 91, i32 11, i32 86, i32 72, i32 72, i32 39, i32 23, ; 0..7
	i32 4, i32 73, i32 37, i32 28, i32 116, i32 53, i32 122, i32 111, ; 8..15
	i32 42, i32 57, i32 51, i32 92, i32 29, i32 16, i32 99, i32 55, ; 16..23
	i32 24, i32 5, i32 95, i32 41, i32 81, i32 114, i32 50, i32 10, ; 24..31
	i32 14, i32 0, i32 51, i32 62, i32 117, i32 23, i32 105, i32 115, ; 32..39
	i32 92, i32 109, i32 18, i32 46, i32 78, i32 34, i32 21, i32 22, ; 40..47
	i32 108, i32 107, i32 69, i32 122, i32 28, i32 91, i32 99, i32 11, ; 48..55
	i32 27, i32 55, i32 6, i32 114, i32 71, i32 33, i32 88, i32 59, ; 56..63
	i32 14, i32 82, i32 101, i32 76, i32 66, i32 34, i32 77, i32 48, ; 64..71
	i32 84, i32 120, i32 102, i32 71, i32 63, i32 43, i32 83, i32 26, ; 72..79
	i32 115, i32 89, i32 108, i32 32, i32 121, i32 100, i32 25, i32 47, ; 80..87
	i32 3, i32 61, i32 80, i32 45, i32 2, i32 121, i32 12, i32 19, ; 88..95
	i32 74, i32 90, i32 42, i32 116, i32 38, i32 73, i32 13, i32 50, ; 96..103
	i32 61, i32 90, i32 67, i32 81, i32 83, i32 89, i32 35, i32 4, ; 104..111
	i32 1, i32 94, i32 64, i32 59, i32 56, i32 19, i32 17, i32 52, ; 112..119
	i32 87, i32 93, i32 25, i32 15, i32 117, i32 2, i32 76, i32 62, ; 120..127
	i32 64, i32 54, i32 70, i32 30, i32 100, i32 24, i32 101, i32 26, ; 128..135
	i32 82, i32 68, i32 97, i32 119, i32 41, i32 103, i32 7, i32 98, ; 136..143
	i32 106, i32 58, i32 77, i32 45, i32 49, i32 57, i32 120, i32 74, ; 144..151
	i32 113, i32 29, i32 32, i32 86, i32 79, i32 85, i32 43, i32 20, ; 152..159
	i32 93, i32 79, i32 75, i32 110, i32 10, i32 80, i32 17, i32 31, ; 160..167
	i32 0, i32 48, i32 53, i32 12, i32 6, i32 65, i32 96, i32 95, ; 168..175
	i32 84, i32 113, i32 27, i32 3, i32 15, i32 104, i32 47, i32 118, ; 176..183
	i32 94, i32 112, i32 38, i32 36, i32 119, i32 46, i32 104, i32 5, ; 184..191
	i32 35, i32 66, i32 52, i32 44, i32 7, i32 70, i32 102, i32 20, ; 192..199
	i32 103, i32 22, i32 49, i32 9, i32 105, i32 40, i32 36, i32 21, ; 200..207
	i32 87, i32 110, i32 8, i32 68, i32 69, i32 8, i32 88, i32 31, ; 208..215
	i32 56, i32 9, i32 111, i32 37, i32 40, i32 1, i32 107, i32 30, ; 216..223
	i32 65, i32 18, i32 54, i32 39, i32 63, i32 16, i32 98, i32 75, ; 224..231
	i32 44, i32 109, i32 78, i32 67, i32 106, i32 33, i32 96, i32 118, ; 232..239
	i32 112, i32 13, i32 60, i32 97, i32 85, i32 60 ; 240..245
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
