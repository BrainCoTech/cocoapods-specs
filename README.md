# BrainCo CocoaPods Specs

This repository serves as the official CocoaPods spec source for BrainCo's iOS libraries and frameworks.

## Usage

To use the libraries hosted in this repository, add the following source to the top of your `Podfile`:

```ruby
source 'https://github.com/BrainCoTech/cocoapods-specs.git'
source 'https://cdn.cocoapods.org/'
```

Then, add the desired BrainCo pods to your target:

```ruby
pod 'CrimsonSDK', '~> 1.7.2'
```

## Local Setup (Optional)

If you need to manually add this spec repository to your local machine, run:

```bash
pod repo add brainco-specs https://github.com/BrainCoTech/cocoapods-specs.git
```
