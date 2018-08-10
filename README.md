# Coding Standards

A collection of my coding standard modifications.

## Code Sniffer
The `src/theAverageDev/Sniffs` folder contains a collection of sniffers I've modified or created to suit my needs and 
preferences.  
The `src/theAverageDev/ruleset.xml` contains my custom [PHP Code Sniffer](!g) configuration.

### Installation
Use [Composer](https://getcomposer.org/) to require the package:

```bash
composer require --dev lucatume/coding-standards
```

### Usage
Run PHP Code Sniffer using the ruleset in `src/theAverageDev`, e.g.:

```bash
phpcs --standard=vendor/lucatume/coding-standards/src/theAverageDev/ruleset.xml
```

Or include the rule in your project ruleset creating a `ruleset.xml` file like this:

```xml
<?xml version="1.0"?>
<ruleset name="MyProject">
    <description>My project coding standards.</description>

    <rule ref="vendor/lucatume/coding-standards/src/theAverageDev/ruleset.xml"/>
</ruleset>
```

### Included PHP Code Sniffer Rules

#### File Comments
Enforces my custom file comment rules.  
Found in `src/CodingStandards/Sniffs/Commenting/FileCommentSniff.php`.  
Disable the rule in a custom ruleset file:

```xml
<?xml version="1.0"?>
<ruleset name="MyProject">
    <description>My project coding standards.</description>

    <rule ref="vendor/lucatume/coding-standards/src/theAverageDev/ruleset.xml">
        <exclude name="theAverageDev.Commenting.FileComment"/>
    </rule>

</ruleset>
```

Set a custom `author` and `copyright` value for the rule:

```xml
<?xml version="1.0"?>
<ruleset name="MyProject">
    <description>My project coding standards.</description>

    <rule ref="vendor/lucatume/coding-standards/src/theAverageDev/ruleset.xml"/>

    <rule ref="theAverageDev.Commenting.FileComment">
        <properties>
            <property name="authorName" value="John Doe"/>
            <property name="authorEmail" value="john@doe.com"/>
        </properties>
    </rule>
</ruleset>
```
