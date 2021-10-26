=begin comment

OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::FormatTest;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::Decimal;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'FormatTest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'integer' => {
        datatype => 'int',
        base_name => 'integer',
        description => '',
        format => '',
        read_only => '',
            },
    'int32' => {
        datatype => 'int',
        base_name => 'int32',
        description => '',
        format => '',
        read_only => '',
            },
    'int64' => {
        datatype => 'int',
        base_name => 'int64',
        description => '',
        format => '',
        read_only => '',
            },
    'number' => {
        datatype => 'double',
        base_name => 'number',
        description => '',
        format => '',
        read_only => '',
            },
    'float' => {
        datatype => 'double',
        base_name => 'float',
        description => '',
        format => '',
        read_only => '',
            },
    'double' => {
        datatype => 'double',
        base_name => 'double',
        description => '',
        format => '',
        read_only => '',
            },
    'decimal' => {
        datatype => 'Decimal',
        base_name => 'decimal',
        description => '',
        format => '',
        read_only => '',
            },
    'string' => {
        datatype => 'string',
        base_name => 'string',
        description => '',
        format => '',
        read_only => '',
            },
    'byte' => {
        datatype => 'string',
        base_name => 'byte',
        description => '',
        format => '',
        read_only => '',
            },
    'binary' => {
        datatype => 'string',
        base_name => 'binary',
        description => '',
        format => '',
        read_only => '',
            },
    'date' => {
        datatype => 'DateTime',
        base_name => 'date',
        description => '',
        format => '',
        read_only => '',
            },
    'date_time' => {
        datatype => 'DateTime',
        base_name => 'dateTime',
        description => '',
        format => '',
        read_only => '',
            },
    'uuid' => {
        datatype => 'string',
        base_name => 'uuid',
        description => '',
        format => '',
        read_only => '',
            },
    'password' => {
        datatype => 'string',
        base_name => 'password',
        description => '',
        format => '',
        read_only => '',
            },
    'pattern_with_digits' => {
        datatype => 'string',
        base_name => 'pattern_with_digits',
        description => 'A string that is a 10 digit number. Can have leading zeros.',
        format => '',
        read_only => '',
            },
    'pattern_with_digits_and_delimiter' => {
        datatype => 'string',
        base_name => 'pattern_with_digits_and_delimiter',
        description => 'A string starting with &#39;image_&#39; (case insensitive) and one to three digits following i.e. Image_01.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'integer' => 'int',
    'int32' => 'int',
    'int64' => 'int',
    'number' => 'double',
    'float' => 'double',
    'double' => 'double',
    'decimal' => 'Decimal',
    'string' => 'string',
    'byte' => 'string',
    'binary' => 'string',
    'date' => 'DateTime',
    'date_time' => 'DateTime',
    'uuid' => 'string',
    'password' => 'string',
    'pattern_with_digits' => 'string',
    'pattern_with_digits_and_delimiter' => 'string'
} );

__PACKAGE__->attribute_map( {
    'integer' => 'integer',
    'int32' => 'int32',
    'int64' => 'int64',
    'number' => 'number',
    'float' => 'float',
    'double' => 'double',
    'decimal' => 'decimal',
    'string' => 'string',
    'byte' => 'byte',
    'binary' => 'binary',
    'date' => 'date',
    'date_time' => 'dateTime',
    'uuid' => 'uuid',
    'password' => 'password',
    'pattern_with_digits' => 'pattern_with_digits',
    'pattern_with_digits_and_delimiter' => 'pattern_with_digits_and_delimiter'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
